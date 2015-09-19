require 'spec_helper'

feature 'Starting a new game' do
  scenario 'Welcome message on homepage' do
    visit '/'
    expect(page).to have_content "Hello! Welcome to Rock Paper Scissors!"
  end

  scenario 'Input box for entering player name, redirect to game play page' do
    visit '/'
    fill_in('player_name', :with => 'Joe')
    click_button("Start Game")
    expect(page).to have_content "Please enter your choice Joe."
  end

  scenario 'Player can enter choice into an input box and play a game' do
    visit '/'
    fill_in('player_name', :with => 'Joe')
    click_button("Start Game")
    fill_in('player_choice', :with => 'rock')
    click_button("Submit my choice")
    expect(page).to have_content("Game result:")
  end
end
