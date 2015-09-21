require 'spec_helper'

feature 'Staring a new RPS game' do

  scenario 'I am asked to enter my name' do
    visit '/'
    click_link 'New Game'
    expect(page).to have_content "What's your name?"
  end

  scenario 'Recieves name' do
    visit '/'
    click_link 'New Game'
    fill_in('name', with: 'Harry')
    click_button 'Submit'
    expect(page).to have_content "Hello Harry! Please press 'Start' to begin Rock, Paper, Scissors:"
  end

  scenario 'Does not recieve name' do
    visit '/'
    click_link 'New Game'
    fill_in('name', with: '')
    click_button 'Submit'
    expect(page).to have_content 'Please enter your name'
  end

  scenario 'Knows players name when in choose shape page' do
    visit '/'
    click_link 'New Game'
    fill_in('name', with: 'Harry')
    click_button 'Submit'
    click_button 'Start'
    expect(page).to have_content "Choose your shape Harry:"
  end

  scenario 'Choose shape page has shape images' do
    visit '/'
    click_link 'New Game'
    fill_in('name', with: 'Harry')
    click_button 'Submit'
    click_button 'Start'
    find_button('rock').visible?
  end

  scenario 'Displays a winner message' do
    visit '/'
    click_link 'New Game'
    fill_in('name', with: 'Harry')
    click_button 'Submit'
    click_button 'Start'
    click_button 'rock'
    expect(page).to have_content 'Result:'
  end

end
