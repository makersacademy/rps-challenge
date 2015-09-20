require 'spec_helper'

feature 'Starting a new game' do
  scenario 'I am asked to enter my name' do
    visit '/'
    expect(page).to have_link "New Game"
  end

  scenario 'Loop until name given' do
    visit '/name'
    click_button 'Start'
    expect(page).to have_content "What's your name"
  end

  scenario 'Start game if name given' do
    visit '/name'
    fill_in 'name', with: 'Chris'
    click_button 'Start'
    expect(page).to have_content "Welcome Chris, GAME ON"
  end
end
