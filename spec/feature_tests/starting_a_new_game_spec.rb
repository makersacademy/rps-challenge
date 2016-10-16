require 'spec_helper'

feature 'Starting a new game' do
  scenario 'The user can start a new game' do
    sign_in_and_play
    click_button 'ROCK'
    click_button 'New Challenger'
    expect(page).to have_content "Let's play a timeless classic:"
  end
end
