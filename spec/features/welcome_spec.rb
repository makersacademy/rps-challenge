require 'capybara/rspec'
require_relative '../../app'

Capybara.app = RpsApp

feature 'Welcome page' do
  scenario 'click start game buttun' do
    visit('/')
    click_link 'Start Game'

    expect(page).to have_content('Please enter your name before stating the game')
  end
end
