require 'spec_helper'
require 'sinatra'

feature 'Starting a new game' do
  scenario 'ask player for a name' do
    visit '/'
    expect(page).to have_content "Welcome to Rock, Paper, Scisors! What's your name?"
  end

  scenario 'ask player to choose an object' do
    visit '/'
    fill_in('name', with: "Catherine")
    click_button 'Submit'
    expect(page).to have_content "Catherine, choose your object"
  end

  scenario 'provide a result of the game' do
    visit '/game'
    click_button 'rock'
    expect(page).to have_content "Game result:"
  end

end
