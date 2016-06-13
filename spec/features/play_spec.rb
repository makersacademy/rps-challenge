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

  scenario 'computer chooses rock' do
  	click_button 'Rock'
  	message = find(:css, "#machine").text.strip
  	expect(possible_messages).to include message
  end

  scenario 'the computer chooses a random weapon' do
  	srand(6780)
  	click_button 'Rock'
  	expect(page).to have_content 'Computer chose scissors'
  end

  scenario 'I win' do
  	srand(6780)
  	click_button 'Rock'
  	expect(page).to have_content 'You win!'
  end

  scenario 'I lose' do
  	srand(6780)
  	click_button 'Paper'
  	expect(page).to have_content 'You lose!'
  end

  scenario 'Draw' do
  	srand(6780)
  	click_button 'Scissors'
  	expect(page).to have_content "It's a draw!"
  end

  def possible_messages
    [:rock, :paper, :scissors].map { |weapon| "Computer chose #{weapon.to_s}"}
  end

end