require 'spec_helper'

feature 'Staring a new rps game' do

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
    expect(page).to have_content "Please press 'start' to begin Rock, Paper, Scissors:"
  end

  scenario 'Does not recieve name' do
    visit '/'
    click_link 'New Game'
    fill_in('name', with: '')
    click_button 'Submit'
    expect(page).to have_content 'Please enter your name'
  end

  scenario 'Goes to choose shape when start button is pressed' do
    visit '/'
    click_link 'New Game'
    fill_in('name', :with => 'Harry')
    click_button 'Submit'
    click_button 'Start'
    expect(page).to have_content "Choose your shape Harry"
  end

end
