require 'spec_helper'

feature 'Single mode game' do
  scenario 'The user asked to enter a name' do
    visit '/'
    click_link "Register for a new game"
    expect(page).to have_content "Hello, what's your name?"
  end

  scenario 'User is redirected to the same page if no name is entered' do
    visit '/registration'
    click_button "Submit"
    expect(current_path).to eq('/registration')
  end

  scenario 'User is asked to choose mode' do
    visit '/registration'
    fill_in 'name', :with => 'Giuseppe'
    click_button "Submit"
    expect(page).to have_content "Hello, Giuseppe! Please select the game mode"
  end

  scenario 'User can play a single player game' do
    visit '/registration'
    fill_in 'name', :with => 'Giuseppe'
    click_button "Submit"
    click_link "Single Player Mode"
    expect(current_path).to eq('/single-player')
  end
end