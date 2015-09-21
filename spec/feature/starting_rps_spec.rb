require 'spec_helper'

feature 'Starting a new game' do
  before(:each) { visit '/' }

  scenario 'First page asks for name' do
    expect(page).to have_content "What's your name?"
  end

  scenario 'Must ask player to choose an object' do
    fill_in('name', with: "Usman")
    click_button 'Start Game'
    expect(page).to have_content "Usman, choose your object"
  end

  scenario 'Must provide a result of the game' do
    visit '/start_game'
    click_button 'rock'
    expect(page).to have_content "Game result:"
  end
end
