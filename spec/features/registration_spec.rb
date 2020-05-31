require 'spec_helper'

feature 'registration' do

  scenario 'welcome page' do
    visit('/')
    expect(page).to have_content("Welcome to Rock, Paper, Scissors!")
  end

  scenario 'user enters name and picks weapon' do
    visit('/')
    fill_in :player_name, with: "Rich"
    fill_in :user_choice, with: "Rock"
    click_button 'Click To Play!'
    expect(page).to have_content("Rich chose Rock!")
  end
end
