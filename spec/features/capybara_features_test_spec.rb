require 'spec_helper'

RSpec.feature "Capybara feature test" do
  scenario "players can enter their name and see them on screen" do
    sign_in_and_play
    expect(page).to have_content "Welcome to Rock, Paper, Scissors, Ben!"
  end

  scenario "Players can choose Rock" do
    sign_in_and_play
    expect(page).to have_content "Select Rock"
  end

  scenario "Players can choose Paper" do
    sign_in_and_play
    expect(page).to have_content "Select Paper"
  end

  scenario "Players can choose Scisscors" do
    sign_in_and_play
    expect(page).to have_content "Select Scissors"
  end
end
