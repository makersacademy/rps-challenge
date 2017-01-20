require 'spec_helper'

RSpec.feature "Capybara feature test" do
  scenario "players can enter their name and see them on screen" do
    sign_in_and_play
    expect(page).to have_content "Welcome to Rock, Paper, Scissors, Ben!"
  end
end
