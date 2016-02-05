require 'spec_helper'
# As a marketeer
# So that I can see my name in lights
# I would like to register my name before playing an online game

feature 'register names' do
  scenario 'submitting names' do
    visit('/')
    fill_in :player_1_name, with: 'Sheldon'
    fill_in :player_2_name, with: 'Leonard'
    click_button 'Play!'
    expect(page).to have content 'Play now...'
  end
end
