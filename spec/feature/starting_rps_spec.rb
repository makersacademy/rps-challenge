require 'spec_helper'

feature 'Starting a new game' do
  scenario 'First page asks for name' do
    visit '/'
    expect(page).to have_content "What's your name?"
  end

  scenario 'Must enter name to start game' do
    visit '/'
    fill_in('name', with: "Usman")
    click_button 'Start Game'
    expect(page).to have_content "Usman, choose your object"
  end

  scenario 'Must enter name to start game' do
    visit '/start_game'
    click_button 'Submit'
    expect(page).to have_content "Game result:"
  end
end
