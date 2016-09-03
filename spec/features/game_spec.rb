require 'spec_helper'
require 'game'

feature 'game_play' do
  subject(:game){Game.new}

  scenario 'takes in two new choices each round' do
    visit "/"
    fill_in('Player Name:', with: 'Isaac')
    click_button 'Play'
    game.play("rock", "lizard")
    expect(page).to have_content("someone won")
  end

  scenario 'determines the winner'

end
