require 'rails_helper'

describe "As a visitor" do
  describe "when I visit the site" do
    it "should display a registration form" do

    visit "users/new"

    end
  end
end