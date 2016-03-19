require 'spec_helper'
require 'capybara'

feature 'Choose a weapon' do
  scenario '1. choose rock' do
    start_game
    click_button('rock')
    expect(page).to have_content('WOW...')
  end

  scenario '2. choose paper' do
    start_game
    click_button('paper')
    expect(page).to have_content('WOW...')
  end

  scenario '3. choose scissors' do
    start_game
    click_button('scissors')
    expect(page).to have_content('WOW...')
  end
end