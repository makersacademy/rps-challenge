require 'spec_helper'

feature 'Starting a new game' do
  scenario 'Player enters name' do
    visit '/'
    expect(page).to have_content "Rock Paper Scissors"
    click_link 'Start Game'
    expect(page).to have_content "What is your name?"
    fill_in('name', :with => 'Ashleigh')
    click_button 'Submit'
    expect(page).to have_content('Welcome!')
  end

  scenario 'Player does not enter their name' do
    visit '/'
    click_link 'Start Game'
    fill_in('name', :with => '')
    click_button 'Submit'
    expect(page).to have_content('What is your name?')
  end

  scenario 'Player is given choice between rock, paper and scissors' do
  	visit '/'
    click_link 'Start Game'
    fill_in('name', :with => 'Ashleigh')
    click_button 'Submit'
    expect(page).to have_content('Rock, paper or scissors... You decide!')
    click_button 'rock'
  end


end