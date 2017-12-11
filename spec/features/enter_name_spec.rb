require 'capybara/rspec'
require_relative '../../app'
require_relative './sign_in'
require './lib/player'

Capybara.app = RpsApp

feature 'show start the game' do
  scenario 'submit name before starting the game' do
    sign_in_single

    expect(page).to have_content('Start the game!')
  end
end

feature 'show name' do
  scenario 'submit name before starting the game' do
    sign_in_single

    expect(page).to have_content('Player 1: Vale')
  end
end

feature 'show start the game' do
  scenario 'submit name before starting the game' do
    sign_in_multiple

    expect(page).to have_content('Start the game!')
  end
end

feature 'show name' do
  scenario 'submit name before starting the game' do
    sign_in_multiple

    expect(page).to have_content('Player 1: Vale')
  end
end
