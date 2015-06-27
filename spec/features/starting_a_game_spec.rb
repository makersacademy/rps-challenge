require 'spec_helper'

feature 'Starting a new game' do
  scenario 'I am asked to enter my name' do
    visit '/'
    click_link 'New Game'
    expect(page).to have_content "What is your name?"
  end

  scenario 'Allows a player to choose Rock, Paper, or Scissors' do 
    visit '/'
    click_link 'New Game'
    fill_in('name', with:'Jon')
    click_button "Draw"
    select 'Rock', from: "Option"
    expect(page).to have_content "You chose Rock"
  end
end