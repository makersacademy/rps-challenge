require 'spec_helper'

feature 'single_player_spec: Entering a name and setting points' do

  before do
    visit '/'
    click_button('One player')
  end

  scenario '1. identifies play mode' do
    expect(page).to have_content('Single player mode')
  end

  scenario '2. has a field to enter name' do
    expect(page).to have_field('player1')
  end

  scenario '3. asks for game points' do
    expect(page).to have_content('How many points to win the game?')
  end

  scenario '4. has field for game points' do
    expect(page).to have_field('points')
  end

  scenario '5. has a button to play' do
    expect(page).to have_button('Play')
  end

  scenario '6. has button to start over' do
    expect(page).to have_button('Start over')
  end
end
