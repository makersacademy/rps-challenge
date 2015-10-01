require 'spec_helper'

feature 'Staring a new RPS game' do

  scenario 'I am asked to enter my name' do
    visit '/'
    click_link 'New Game'
    expect(page).to have_content "What's your name?"
  end

  scenario 'Does not recieve name' do
    visit '/'
    click_link 'New Game'
    fill_in('name', with: "")
    click_button 'Submit'
    expect(page).to have_content "What's your name?"
  end

  scenario 'Recieves an empty string for name' do
    visit '/'
    click_link 'New Game'
    fill_in('name', with: " ")
    click_button 'Submit'
    expect(page).to have_content "What's your name?"
  end

  scenario 'Recieves name and session remembers name' do
    visit '/'
    click_link 'New Game'
    fill_in('name', with: 'Harry')
    click_button 'Submit'
    expect(page).to have_content "Choose your shape Harry:"
  end

  scenario 'Choose shape page has shape images' do
    visit '/'
    click_link 'New Game'
    fill_in('name', with: 'Harry')
    click_button 'Submit'
    find_button('rock').visible?
  end

  scenario 'Displays a winner message' do
    visit '/'
    click_link 'New Game'
    fill_in('name', with: 'Harry')
    click_button 'Submit'
    click_button 'rock'
    expect(page).to have_content 'Result:'
  end

  scenario 'User is offered to start a new game' do
    visit '/'
    click_link 'New Game'
    fill_in('name', with: 'Harry')
    click_button 'Submit'
    click_button 'rock'
    click_link 'New Game'
  end

end
