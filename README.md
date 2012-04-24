# pebble {code} site

This is a simple brochure site written with [sinatra][1].


## Installation

To hack on the site you need to install bundler

    gem install bundler

Then install all the required gems

    bundle install

Start the server

		rake server

Go to `http://localhost:7100`

## Automatic reloading

To autoload the site, this app uses [shotgun][2], but this is wrapped around the rake task, so nothing needs to be done for it to work.

## Views and styling

The files you'll be most concerned with are the view files (under /views) and the stylesheet files (under /views/stylesheets).

The view files are written in [haml][3] and the stylesheets are written in [scss][4].

## Tests

Todo

## Deployment

The site is hosted on [Heroku][5], and deployment is wrapped around a rake task.

### Prerequisites

Set up production deployment with

    git remote add production git@heroku.com:pebblecode.git

### Ship it!

To deploy to production

    git shipit:production

This merges the master branch to the production branch, pushes to origin, deploys to production, and checkouts out the master branch.

[1]: http://www.sinatrarb.com/
[2]: http://github.com/rtomayko/shotgun/
[3]: http://haml-lang.com/
[4]: http://sass-lang.com/
[5]: http://www.heroku.com/
