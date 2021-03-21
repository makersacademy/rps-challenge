require 'spec_helper'

feature 'play a game of rock paper scissors' do
  scenario 'a player can play rock' do
    enters_name
    expect(page).to have_selector(:link_or_button, 'Rock')
  end 

  scenario 'a player can play scissors' do
    enters_name
    expect(page).to have_selector(:link_or_button, 'Scissors')
  end 

  scenario 'a player can play paper' do
    enters_name
    expect(page).to have_selector(:link_or_button, 'Paper')

  end 
end  
