require 'spec_helper'

class User < SuperModel::Base
  include ActiveModel::Validations::Callbacks
  extend FormatUrl::ModelAdditions
  format_url :website
end

describe FormatUrl::ModelAdditions do
  it "adds http:// to URL upon saving" do
    User.create!(website: "example.com").website.should eq("http://example.com")
    User.create!(website: "http://example.com").website.should eq("http://example.com")
  end

  it "validates URL format" do
    user = User.new(website: "foo bar")
    user.should_not be_valid
    user.errors[:website].should eq(["is not a valid URL"])
    user.website = "example.com"
    user.should be_valid
  end
end