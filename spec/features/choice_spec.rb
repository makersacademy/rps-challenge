require 'spec_helper'

feature 'player has three choices' do

  scenario 'player can select rock' do
    visit('/')
    fill_in :player_name, with: 'Laura'
    click_button 'Play'
    find_button('Rock').click
  end

  scenario 'player can select paper' do
    visit('/')
    fill_in :player_name, with: 'Laura'
    click_button 'Play'
    find_button('Paper').click
  end

  scenario 'player can select scissors' do
    visit('/')
    fill_in :player_name, with: 'Laura'
    click_button 'Play'
    find_button('Scissors').click
  end


end
