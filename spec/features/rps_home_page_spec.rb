  require "capybara/rspec"

  feature 'it can call my website' do
    scenario 'I can call the index page' do
      visit('/')
      expect(page).to have_content 'Welcome to Rock, Paper, Scissors Game'
    end
  end
