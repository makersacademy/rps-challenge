require 'spec_helper'
require 'game'

feature 'game_play' do
  subject(:game){Game.new}

  scenario 'takes in two new choices each round' do
    visit "/"
    fill_in('Player Name:', with: 'Isaac')
    click_button 'Play'
    choose 'Rock'
    click_button 'Play move'
    expect(page).to have_content("Game Over!")
  end


end
