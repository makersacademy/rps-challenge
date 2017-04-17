require 'spec_helper'

feature 'Restart the game' do
  scenario 'restart at the end of the game' do
    sign_in_and_play
    click_button('rock')
    click_button('Play again')
    expect(page).to have_content('Darth Vader playing Rock Paper Scissors')
  end
  scenario 'restart with a new player' do
    sign_in_and_play
    click_button('rock')
    click_button('New player')
    fill_in('player_name', with: 'Luke Skywalker')
    click_button('Start game')
    expect(page).to have_content('Luke Skywalker playing Rock Paper Scissors')
  end
end
