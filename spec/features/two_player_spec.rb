require 'spec_helper'

feature "Two player" do

  scenario "Expect page 1 to enter player name details" do
    visit('/')
    click_button 'Start Game'
    expect(page).to have_content "Enter player names"
  end

  scenario "Expect page 1 to correctly assign player name details" do
    visit('/')
    click_button 'Start Game'
    sign_in_and_play
    @game = Game.instance
    expect(@game.player1.name).to eq "Lauren"
    expect(@game.player2.name).to eq "Andrew"
  end

  scenario "Expect page after name entry to enter player 1 choice" do
    sign_in_and_play
    click_button 'Lizard'
    @game = Game.instance
    expect(@game.player1.choice).to eq :Lizard
  end

  scenario "Expect page after player 1 choice to enter player 2 choice" do
    sign_in_and_play
    click_button 'Lizard'
    click_button 'Spock'
    @game = Game.instance
    expect(@game.player2.choice).to eq :Spock
  end

end
