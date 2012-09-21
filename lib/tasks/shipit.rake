# Ship it! rake task
#
# Merge branch (master by default) to deployment branch, and deploy to server.
#
# Prerequisite:
#
#   * Set up branches on local machine and deployment server
#   * Declare all deployment branches in `ALL_DEPLOYMENT_BRANCHES`
#   * Declare deploy only branches in `DEPLOY_ONLY_BRANCHES` (ie, does not merge master)
#   * Modify `deploy_command` function as necessary
#
# Usage:
#
#     # Do work on `master`, and commit
#     # Merge `master` to `deployment-branch`, and deploy with:
#     bundle exec rake shipit[deployment-branch]
#
#     # Do work on `some-branch`, and commit
#     # Merge `some-branch` to `deployment-branch`, and deploy with:
#     bundle exec rake shipit:branch[some-branch,deployment-branch]
#
# Notes:
#
#   * Merge conflicts may occur, which the rake tasks don't currently
#     handle. You need to exercise your git-foo in these cases.
#

require 'fileutils'

ALL_DEPLOYMENT_BRANCHES = ["staging", "production", "design"]
DEPLOY_ONLY_BRANCHES = ["design"]

def deploy_command(branch)
  # For capitrano - Assume that capistrano task is the same name as the branch
  # "bundle exec cap #{branch} deploy"

  # For heroku - Assume local branch is set up with remote heroku branch
  "git push #{branch} #{branch}:master"
end

def git_checkout!(branch)
  sh "git checkout #{branch}"
end

def git_merge!(branch)
  sh "git merge #{branch}"
end

def git_push_origin!(local_branch, remote_branch)
  sh "git push origin #{local_branch}:#{remote_branch}"
end

def deploy_branch!(branch)
  sh deploy_command(branch)
end

# Merge `from_branch` and push to remote server, and checkout `from_branch` at the end.
def merge_branch!(from_branch, to_branch)
  git_checkout!(to_branch) do |checkout_ok, checkout_resp|
    if checkout_ok
      git_merge!(from_branch) do |merge_ok, merge_resp|
        if merge_ok
          git_push_origin!(to_branch, to_branch)
          git_checkout!(from_branch)
        else
          abort(merge_resp)
        end
      end
    else
      abort(checkout_resp)
    end
  end
end

desc "Merge master to branch, and push to origin server."
task "merge_master_and_push_to", [:branch] do |t, args|
  merge_branch!("master", args.branch)
end

desc "Deploy branch to server."
task :deploy, [:branch] do |t, args|
  deploy_branch!(args.branch)
end

desc "Ship it! Merge master and push branch to origin (if not in `DEPLOY_ONLY_BRANCHES`), then deploy to the server."
task "shipit", [:branch] do |t, args|
  if ALL_DEPLOYMENT_BRANCHES.include? args.branch
    unless DEPLOY_ONLY_BRANCHES.include? args.branch
      Rake::Task["merge_master_and_push_to"].invoke(args.branch)
    end

    Rake::Task["deploy"].invoke(args.branch)
  else
    puts "Invalid deployment branch: #{args.branch}"
    puts "Available deployment branches are: #{ALL_DEPLOYMENT_BRANCHES.to_s}"
  end
end

namespace "shipit" do
  desc "Merge branch to deployment branch, push to remote server, and deploy."
  task :branch, [:from_branch, :deploy_branch] do |t, args|
    from_branch = args.from_branch
    deploy_branch = args.deploy_branch

    if ALL_DEPLOYMENT_BRANCHES.include? deploy_branch
      merge_branch!(from_branch, deploy_branch)

      Rake::Task["deploy"].invoke(deploy_branch)
    else
      puts "Invalid deployment branch: #{args.branch}"
      puts "Available deployment branches are: #{ALL_DEPLOYMENT_BRANCHES.to_s}"
    end
  end
end