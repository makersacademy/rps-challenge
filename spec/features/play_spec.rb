require 'spec_helper'

feature 'play rock, paper, scissors' do

  before do
  	visit('/')
  	fill_in :player_name, with: 'Luke'
  	click_button 'Submit'
  end
  
  scenario 'submit name to play' do
  	expect(page).to have_content 'Luke vs. Machine'
  end

  scenario 'see the weapons to do battle' do
  	expect(page).to have_button 'Rock'
  	expect(page).to have_button 'Paper'
  	expect(page).to have_button 'Scissors'
  end

  scenario 'choose a weapon' do
  	click_button 'Paper'
  	expect(page).to have_content 'You chose Paper'
  end

  scenario 'the computer chooses a random weapon' do
  	srand(1010)
  	click_button 'Rock'
  	expect(page).to have_content 'the computer chose rock'
  end

  







end