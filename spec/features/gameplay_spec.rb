require 'spec_helper'
require_relative 'web_helpers'

# weapons = ['Rock', 'Paper', 'Scissors']

# As a marketeer
# So that I can enjoy myself away from the daily grind
# I would like to be able to play rock/paper/scissors

feature 'playing a game of RPS' do
  scenario 'viewing the weapon options' do
    register_and_play
    expect(page).to have_button 'Rock'
    expect(page).to have_button 'Paper'
    expect(page).to have_button 'Scissors'
  end

  scenario 'select a weapon' do
    register_and_play
    click_button 'Rock'
    expect(page).to have_content('You picked Rock')
  end

  # scenario 'opponent chooses a weapon' do
  #   register_and_play
  #   click_button 'Rock'
  #   expect(page).to have_content('Opponent picked Rock')
  # end
end
