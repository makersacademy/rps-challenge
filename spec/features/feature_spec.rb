require 'capybara'
require_relative '../../app.rb'

include Capybara::DSL

describe 'user specs' do
  Capybara.default_driver = :selenium

  feature 'entering name' do
    scenario 'allows user to enter name to start game' do
      visit 'http://localhost:9292/'
      fill_in('name', with: 'Tony')
      click_button('Start Game')
      expect(page).to have_content('Tony')
    end
  end
end
