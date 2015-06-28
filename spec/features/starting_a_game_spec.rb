require 'spec_helper'

feature 'Starting a new game' do
  scenario 'I am asked to enter my name' do
    visit '/'
    click_link 'New Game'
    expect(page).to have_content "What is your name?"
  end

  scenario 'shows a players name' do 
    visit '/'
    click_link 'New Game'
    fill_in('name', with: 'Jon')
    click_button "Submit"
    expect(page).to have_content "Welcome Jon"
  end

  scenario 'gives the option to play against a computer or another player' do 
    visit '/'
    click_link 'New Game'
    fill_in('name', with: 'Jon')
    click_button 'Submit'
    click_button 'Computer'
    expect(page).to have_content "Please choose Rock, Paper or Scissors"
  end


  scenario 'Allows a player to choose Rock, Paper, or Scissors' do 
    visit '/'
    click_link 'New Game'
    fill_in('name', with:'Jon')
    click_button "Submit"
    click_button "Computer"
    select 'Paper', from: "Option"
    click_button "Draw"
    expect(page).to have_content "You chose Paper"
  end

  scenario 'Allows a second player to player' do
    visit '/'
    click_link 'New Game'
    fill_in('name', with:'Jon')
    click_button "Submit"
    click_button "Another Player"
    expect(page).to have_content "Player 2: Enter Name"
end

scenario 'allows two players to playe against each other' do 
   visit '/'
    click_link 'New Game'
    fill_in('name', with:'Jon')
    click_button "Submit"
    click_button "Another Player"
    fill_in("name2", with: "Bob")
    click_button "Submit"
    select 'Paper', from:"Option"
    select 'Scissors', from:"Option2"
    click_button "Draw"
    expect(page).to have_content "Player 2 wins"
  end
end