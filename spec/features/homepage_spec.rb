require 'capybara/rspec'
require './app.rb'
require_relative 'web_helpers'
Capybara.app = Game


feature "Visit homepage and fill in the boxes with name" do 
  scenario "Filling in names" do 
    sign_in_and_play
    expect(page).to have_content "Player 1: Michael"
  end 
end 