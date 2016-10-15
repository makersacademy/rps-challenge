require 'spec_helper'

RSpec.feature Rps, :type => :feature do
  scenario "Home page requests a form to enter a player's name" do

    sign_in_and_play

    expect(page).to have_text("Welcome to Rock, Paper, Scissors!")
    expect(page).to have_text("It's Dionysis against rps-bot")
  end
end
