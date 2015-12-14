require 'capybara'
require 'web_helper'
require_relative '../../app.rb'

include Capybara::DSL

describe 'User specs' do
  Capybara.default_driver = :selenium

  feature 'entering name' do
    scenario 'allows user to enter name' do
      sign_in_and_play
      expect(page).to have_content('Tristan')
    end
  end

  feature 'select weapon' do
    scenario 'allows user to select rock' do
      sign_in_and_play
      click_button('Rock')
      expect(page).to have_content('You have selected Rock')
    end

    scenario 'allows user to select paper' do
      sign_in_and_play
      click_button('Paper')
      expect(page).to have_content('You have selected Paper')
    end

    scenario 'allows user to select scissors' do
      sign_in_and_play
      click_button('Scissors')
      expect(page).to have_content('You have selected Scissors')
    end
  end
end
