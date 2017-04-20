require "spec_helper"
require_relative "test_helper"

RSpec.feature "name in shiny lights", :type => :feature do

  scenario "User enters their name and it is displayed" do
    sign_in_and_play
    expect(page).to have_content("Dagmara vs Daily Grind")
  end
end
