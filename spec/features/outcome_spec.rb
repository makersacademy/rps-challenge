require 'spec_helper'
require_relative '../../lib/game'


feature "Displaying the computers random choice" do
  scenario "computer randomly selects paper" do
    srand(234567)
    sign_in_and_play
    player_chooses_rock
    expect(page).to have_content "The computer chose Paper"
  end
end

feature "Displaying the outcome of a game" do

  scenario "player chooses rock" do
    srand(5678)
    sign_in_and_play
    player_chooses_rock
    expect(page).to have_content "The computer chose Rock"
    expect(page).to have_content "You are tied!"
  end

  scenario "player chooses paper" do
    srand(7890)
    sign_in_and_play
    player_chooses_paper
    expect(page).to have_content "The computer chose Rock"
    expect(page).to have_content "You are victorious!"
  end

  scenario "player chooses scissors" do
    srand(8234)
    sign_in_and_play
    player_chooses_scissors
    expect(page).to have_content "The computer chose Rock"
    expect(page).to have_content "The computer thwarted you!"
  end
end
