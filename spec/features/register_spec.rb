require 'spec_helper'
# require '../rps-challenge/app.rb'

# As a marketeer
# So that I can see my name in lights
# I would like to register my name before playing an online game

feature 'registering' do
  scenario 'register and display the player name' do
    visit('/')
    fill_in :name, with: 'Pooch'
    click_button 'Submit'
    expect(page).to have_content('Pooch')
  end
end
