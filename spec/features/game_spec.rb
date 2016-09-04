require 'spec_helper'
require 'game'

feature 'game_play' do
  subject(:game){Game.new}

  scenario 'takes in two new choices each round' do
    visit "/"
    fill_in('Player Name:', with: 'Isaac')
    click_button 'Play'
    game.play("rock")
    expect(page).to have_content("someone one")
  end

  scenario 'player enters too many choices'

  scenario 'determines the winner'

end
