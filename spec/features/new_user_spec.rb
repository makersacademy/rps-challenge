require 'spec_helper.rb'
require_relative './helpers.rb'

feature 'New User arrives at root page' do
  scenario 'Displays form on the home page' do
    visit('/')
    expect(page).to have_content('Please enter your name:')
  end

  scenario 'Redirects to game page with welcome message' do
    sign_in
    expect(page).to have_content("Welcome to the Game, Reginald!")
  end
end
