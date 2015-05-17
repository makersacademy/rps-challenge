require 'spec_helper'

feature 'Starting a new game' do
  scenario 'Player enters name' do
    visit '/'
    expect(page).to have_content "Rock Paper Scissors"
    click_link 'Start Game'
    expect(page).to have_content "What is your name?"
    fill_in('Name', :with => 'Ashleigh')
    click_button 'Submit'
    expect(page).to have_content('Welcome!')
  end

  xscenario 'Player does not enter their name' do
    visit '/'
    expect(page).to have_content "Rock Paper Scissors"
    click_link 'Start Game'
    expect(page).to have_content "What is your name?"
    fill_in('Name', :with => '')
    expect(page).to have_content('You seem to be nameless!')
  end

end