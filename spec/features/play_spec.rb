require 'spec_helper'

feature 'play game of rock paper scissors' do
  before do
    visit '/'
    fill_in 'name', with: 'Nick'
    click_button 'Submit'
  end

  #2.0 see the options available to player
  scenario 'game starts see game options' do
    expect(page).to have_button 'Rock'
    expect(page).to have_button 'Paper'
    expect(page).to have_button 'Scissors'
  end

  #2.1 player can choose RP or S
  scenario 'player can choose RPS' do
    click_button 'Rock'
    expect(page).to have_content 'You chose Rock!'
  end

  #2.2 computer to be able to choose a shape
  scenario 'Game can choose "Rock"' do
    click_button 'Rock'
    expect(possible_messages).to include 'Opponent chose Rock!'
  end


  #I want the game to choose a random option
  scenario 'game chooses a random option' do
    click_button 'Rock'
    expect(page).to have_content 'Opponent chose Rock'
  end

  def possible_messages
    [:rock, :paper, :scissors].map { |shape| "Opponent chose #{shape.to_s.capitalize}!"}
  end

end

# As a marketeer
# So that I can enjoy myself away from the daily grind
# I would like to be able to play rock/paper/scissors
