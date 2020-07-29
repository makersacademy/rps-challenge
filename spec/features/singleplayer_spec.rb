require 'spec_helper'

feature 'Singleplayer page' do
  scenario 'Singleplayer start game' do
    visit('/')
    click_button 'Singleplayer'
    expect(page).to have_content("Welcome to Singleplayer Mode!")
    expect(page).not_to have_content("Welcome to Multiplayer Mode!")
  end
end
