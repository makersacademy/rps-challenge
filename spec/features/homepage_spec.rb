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

feature "#Selection of Rock Paper or Scissors" do 
  scenario "will check for the options" do 
    sign_in_and_play
    click_button "Rock"
    expect(page).to have_content "Rock"
  end 
end 

feature "#Selection of Rock Paper or Scissors" do 
  scenario "will check for the options" do 
    sign_in_and_play
    click_button "Paper"
    expect(page).to have_content "Paper"
  end 
end 

feature "#Selection of Rock Paper or Scissors" do 
  scenario "will check for the options" do 
    sign_in_and_play
    click_button "Scissors"
    expect(page).to have_content "Scissors"
  end 
end 