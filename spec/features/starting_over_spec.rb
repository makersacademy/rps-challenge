require 'spec_helper'

feature 'Starting again' do

  scenario 'Player wants to try again' do
    sign_in_and_play
    click_button 'Rock'
    click_button 'Try again?'
    expect(page).to have_content 'Welcome Player!'
  end

  scenario 'Player signs out so a new player can play' do
    sign_in_and_play
    click_button 'Rock'
    click_button 'Sign out'
    sign_in_and_play_2
    expect(page).to have_content 'Welcome New player!'
  end
end
