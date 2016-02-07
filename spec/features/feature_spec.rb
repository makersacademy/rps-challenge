require 'capybara'
require 'web_helper'
require_relative '../../app.rb'

#include Capybara::DSL

describe 'user specs' do
  #Capybara.default_driver = :selenium

  feature 'entering name' do
    scenario 'allows user to enter name to start game' do
      sign_in_and_play
      expect(page).to have_content('Tony')
    end
  end

  feature 'making choice' do
    scenario 'allows user to pick rock' do
      sign_in_and_play
      click_button('rock')
      expect(page).to have_content('You chose rock')
    end

    scenario 'allows user to pick paper' do
      sign_in_and_play
      click_button('paper')
      expect(page).to have_content('You chose paper')
    end

    scenario 'allows user to pick scissors' do
      sign_in_and_play
      click_button('scissors')
      expect(page).to have_content('You chose scissors')
    end
  end
end
