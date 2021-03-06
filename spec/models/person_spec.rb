require_relative '../spec_helper'

describe Person do
  describe "#all" do
    it "exists" do
      expect(Person.all.length).to be > 0
    end

    it "returns Toby" do
      toby = Person.all.select {|p| p[:name] == "Toby Hunt"}
      expect(toby.length).to be > 0
    end
  end

  describe "#all_urls" do
    it "exists" do
      expect(Person.all_urls.length).to be > 0
    end

    it "returns '/people/toby-hunt'" do
      expect(Person.all_urls).to include('/people/toby-hunt')
    end
  end

  describe "#find_by_index" do
    it "finds Toby Hunt" do
      person = Person.find_by_index(0)
      expect(person[:name]).to eql("Toby Hunt")
    end
  end

  describe "#find_by_name" do
    it "finds Toby Hunt" do
      person = Person.find_by_name("Toby Hunt")
      expect(person[:name]).to eql("Toby Hunt")
    end
  end

  describe "#slug" do
    it "returns a slug" do
      person = {
        :name => "Toby Hunt"
      }
      expect(Person.slug(person)).to eql("/people/toby-hunt")
    end
  end

  # Note: these tests could break if people add/remove
  # tumblr accounts
  describe "#all_with_tumblr_name" do
    it "has Toby Hunt" do
      toby = Person.find_by_name("Toby Hunt")
      expect(Person.all_with_tumblr_name.include? toby).to be_true
    end

    it "does not have Dom Crossley" do
      dom = Person.find_by_name("Dom Crossley")
      expect(Person.all_with_tumblr_name.include? dom).to be_false
    end
  end
end