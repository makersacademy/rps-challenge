require 'spec_helper'
require 'sinatra'

feature 'Starting a new game' do
  scenario 'Ask player for a name' do
    visit '/'
    expect(page).to have_content "Welcome to Rock, Paper, Scisors! What's your name?"
  end

  scenario 'Ask player to choose an object' do
    visit '/'
    fill_in('name', with: "Catherine")
    click_button 'Submit'
    expect(page).to have_content "Catherine, choose your object"
  end

  scenario 'Provide a result of the game' do
    visit '/start_game'
    click_button 'Submit'
    expect(page).to have_content "Game result:"
  end

end
