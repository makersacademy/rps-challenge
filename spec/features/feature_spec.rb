require 'capybara'
require 'web_helper'
require_relative '../../app.rb'

include Capybara::DSL

describe 'user specs' do
  Capybara.default_driver = :selenium

  feature 'entering name' do
    scenario 'allows user to enter name to start game' do
      sign_in_and_play
      expect(page).to have_content('Tony')
    end
  end

  feature 'making choice' do
    xscenario 'allows user to pick rock' do
      sign_in_and_play
      click_button('Rock')
      expect(page).to have_content('You chose Rock')
    end

    xscenario 'allows user to pick paper' do
      sign_in_and_play
      click_button('Paper')
      expect(page).to have_content('You chose Paper')
    end

    xscenario 'allows user to pick scissors' do
      sign_in_and_play
      click_button('Scissors')
      expect(page).to have_content('You chose Scissors')
    end
  end
end
