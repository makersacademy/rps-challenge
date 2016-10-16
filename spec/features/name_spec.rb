require 'spec_helper'

feature 'player names' do
  scenario 'enter a players name' do
    sign_in
    expect(page).to have_content('Daisy vs.')
  end

  scenario 'shows headers' do
    visit '/'
    expect(page).to have_content 'Rock, Paper, Scissors'
    expect(page).to have_content 'Sign in and play'
  end
end
