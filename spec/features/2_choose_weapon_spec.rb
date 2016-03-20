require 'spec_helper'
require 'capybara'

feature 'Choose a weapon' do
  scenario '1. choose rock' do
    allow(Kernel).to receive(:rand).and_return(1)
    start_game
    click_button('rock')
    expect(page).to have_content('TIE')
  end

  scenario '2. choose paper' do
    allow(Kernel).to receive(:rand).and_return(2)
    start_game
    click_button('paper')
    expect(page).to have_content('TIE')
  end

  scenario '3. choose scissors' do
    allow(Kernel).to receive(:rand).and_return(3)
    start_game
    click_button('scissors')
    expect(page).to have_content('TIE')
  end
end