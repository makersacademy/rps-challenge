require 'spec_helper'

feature 'Multiplayer page' do
  scenario 'Multiplayer start game' do
    visit('/')
    click_button 'Multiplayer'
    expect(page).not_to have_content("Welcome to Singleplayer Mode!")
    expect(page).to have_content("Welcome to Multiplayer Mode!")
  end
end
