require "capybara/rspec"
require_relative "../../app"

Capybara.app = RPS

feature 'Player vs Robot' do
  scenario 'Choosing Single Player' do
    visit('/')
    click_button 'Single Player'
  end
end