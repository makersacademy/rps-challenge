require 'spec_helper'

RSpec.feature "Capybara feature test" do
  scenario "players can enter their name and see them on screen" do
    sign_in_and_play
    expect(page).to have_content "Welcome to Rock, Paper, Scissors, Ben!"
  end

  scenario "Players can choose Rock" do
    sign_in_and_play
    expect(page).to have_xpath("//input[@value='Rock']")
  end

  scenario "Players can choose Paper" do
    sign_in_and_play
    expect(page).to have_xpath("//input[@value='Paper']")
  end

  scenario "Players can choose Scisscors" do
    sign_in_and_play
    expect(page).to have_xpath("//input[@value='Scissors']")
  end

  scenario "Both the player and the computer choose rock" do
    sign_in_and_play
    expect(page).to have_content "It's a tie!"
  end
end
