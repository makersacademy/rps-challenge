require 'spec_helper'

feature 'Entering the page' do

  scenario 'I am asked to enter my name' do
    visit '/'
    expect(page).to have_content("Please enter your name:")
  end

  scenario 'I am asked to pick a weapon' do
    visit '/'
    fill_in('name', with:'Adrian')
    click_button("Start Game")
    expect(page).to have_content("Choose your weapon, Adrian!")
  end

  scenario 'I can see the result of the game' do
    visit '/'
    fill_in('name', with:'Adrian')
    click_button("Start Game")
    choose("rock")
    click_button("PLAY!")
    expect(page).to have_content("You chose")
  end


end
