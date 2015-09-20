require 'spec_helper'

feature 'Starting the game:' do

  scenario 'displays welcome message' do
    visit '/'
    expect(page).to have_content 'Welcome, brave marketeer.'
  end

  scenario 'lets player enter name and remembers it' do
    visit '/'
    fill_in 'player_name', with: 'Steerpike'
    click_button 'GO'
    expect(page).to have_content 'Choose your weapon, Steerpike.'
  end

end

feature 'Playing the game:' do

  before do
    visit '/'
    fill_in 'player_name', with: 'Steerpike'
    click_button 'GO'
  end

  scenario 'offers a choice of weapons' do
    expect(page).to have_selector 'input[type=radio][value="Scissors"]'
  end

  scenario 'lets player choose a weapon' do
    choose 'Scissors'
    click_button 'THROW SHAPE'
    expect(page).to have_content 'Steerpike threw Scissors.'
  end

  scenario 'makes the computer choose a weapon' do
    click_button 'THROW SHAPE'
    expect(page).to have_content 'The computer threw'
  end

end

feature 'Displaying the results:' do

  before do
    srand(0) # seeds RNG to ensure computer chooses Rock
    visit '/'
    fill_in 'player_name', with: 'Steerpike'
    click_button 'GO'
  end

  scenario 'summarises the contest' do
    choose 'Scissors'
    click_button 'THROW SHAPE'
    expect(page).to have_content 'Rock blunts Scissors.'
  end

  scenario 'announces the winner' do
    choose 'Paper'
    click_button 'THROW SHAPE'
    expect(page).to have_content 'Steerpike wins!'
  end

  scenario 'deals with ties' do
    choose 'Rock'
    click_button 'THROW SHAPE'
    expect(page).to have_content 'It\'s a tie... meh.'
  end

end
