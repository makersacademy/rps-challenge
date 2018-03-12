require 'capybara/rspec'
require './app.rb'

feature 'enter player name' do
  scenario 'Player can enter their name in a form' do
    visit('/')
    sign_in_and_play
    expect(page).to have_content 'Rock, Paper, or Scissors'
  end
end
