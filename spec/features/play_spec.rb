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

  scenario 'select a weapon to do battle' do
  	expect(page).to have_button 'Rock'
  	expect(page).to have_button 'Paper'
  	expect(page).to have_button 'Scissors'
  end

  # scenario 'weapon choice made by player' do
  # 	click_button 'Paper'
  # 	expect(page).to have_content 'You selected rock'
  # end
end