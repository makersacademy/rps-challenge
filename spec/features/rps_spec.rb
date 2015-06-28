require 'spec_helper'

feature 'Starting a new game' do
  scenario 'I am asked to enter my name' do
    visit '/'
    expect(page).to have_content "Please enter your name:"
  end

  scenario 'it greets the player by name' do
    visit '/'
    fill_in("name", with:'Rob')
    click_button("Submit")
    expect(page).to have_content "Welcome to Rock, Paper, Scissors, Rob!"
  end

  scenario 'it allows the player to select Rock' do
    visit '/'
    fill_in("name", with:'Rob')
    click_button("Submit")
    select 'Rock', from: "Option"
    click_button("PLAY!")
    expect(page).to have_content "You selected Rock..."
  end
end