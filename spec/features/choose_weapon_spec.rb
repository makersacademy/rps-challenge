require 'spec_helper'
require 'capybara'

feature 'choose weapon' do
  scenario 'choose rock' do
    start_game
    click_button('rock')
    expect(page).to have_content('OUTCOME')
  end

  scenario 'choose paper' do
    start_game
    click_button('paper')
    expect(page).to have_content('OUTCOME')
  end

  scenario 'choose scissors' do
    start_game
    click_button('scissors')
    expect(page).to have_content('OUTCOME')
  end
end