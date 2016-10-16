require "spec_helper"
require_relative "web_helper"

RSpec.feature "RPS", :type => :feature do
  scenario "User enters their name" do
    sign_in_and_play
    expect(page).to have_text("Welcome to Rock, Paper, Scissors naomi.")
  end
end
