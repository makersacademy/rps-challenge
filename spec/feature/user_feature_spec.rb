require 'spec_helper'

feature 'user story' do

  # As a marketeer
  # So that I can see my name in lights
  # I would like to register my name before playing an online game

  scenario 'fill in the name of the player' do
    visit('/')
    fill_in('player', with: 'Edward scisorhands')
    click_button('start the game')
    expect(page).to have_content('welcome to the game: Edward scisorhands')
  end
end
