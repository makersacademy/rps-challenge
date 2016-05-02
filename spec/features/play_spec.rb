require 'spec_helper'

feature 'see options rock, paper or scissors' do
  SCISSORS = 12
  scenario 'see rock paper or scissors' do
    sign_in_and_play
    expect(page).to have_button 'Rock'
    expect(page).to have_button 'Paper'
    expect(page).to have_button 'Scissors'
  end

  scenario 'click button to choose option' do
    sign_in_and_play
    click_button 'Rock'
    expect(page).to have_content 'You chose Rock!'
  end

  scenario 'computer selects a random option' do
    srand(SCISSORS)
    sign_in_and_play
    click_button 'Rock'
    expect(page).to have_content "Computer chose Scissors"
  end

context 'ending game' do
  before do
       srand(SCISSORS)
     end

  scenario 'it tells me when I win' do
    sign_in_and_play
    click_button 'Rock'
    expect(page).to have_content 'YOU WIN'
  end

  scenario 'it tells me when I lose' do
    sign_in_and_play
    click_button 'Paper'
    expect(page).to have_content 'YOU LOSE'
  end

  scenario 'tie' do
    sign_in_and_play
    click_button 'Scissors'
    expect(page).to have_content 'TIED GAME'
  end

  def possibe_messages
    [:rock, :paper, :scissors].map { |shape| "Computer chose #{shape.to_s.capitalize}"}
  end

end
end