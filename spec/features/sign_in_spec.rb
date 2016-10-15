require 'spec_helper'

RSpec.feature Rps, :type => :feature do
  scenario "Home page welcomes player" do
    visit "/"

    expect(page).to have_text("Welcome to Rock, Paper, Scissors!")
  end

  scenario "Home page has a form to type player's name" do
    visit "/"

    expect(page).to have_text("Player 1, enter your name:")
  end

end
