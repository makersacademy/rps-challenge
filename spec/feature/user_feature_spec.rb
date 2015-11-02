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

  # As a marketeer
  # So that I can enjoy myself away from the daily grind
  # I would like to be able to play rock/paper/scissors

  scenario 'choose between srp' do
    allow_any_instance_of(Array).to receive(:sample).and_return(:scissors)
    visit('/')
    fill_in('player', with: 'Edward scisorhands')
    click_button('start the game')
    find('div.radio').choose('rock')
    click_button('submit')
    expect(page).to have_content "You win"
  end
end
