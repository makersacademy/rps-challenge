require 'spec_helper'
# As a marketeer
# So that I can see my name in lights
# I would like to register my name before playing an online game

  feature 'registering player name' do
    scenario 'Player can register and see their name' do
      visit('/')
      fill_in 'name', with: 'Barri'
      click_button 'Submit'
      expect(page).to have_content 'Barri'
    end
  end
