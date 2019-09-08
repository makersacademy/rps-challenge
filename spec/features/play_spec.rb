require 'spec_helper'

feature 'play RPS' do
  let(:opponent_hand_rock) { srand(2) }
  let(:opponent_hand_paper) { srand(1) }
  let(:opponent_hand_scissors) { srand(3) }

  scenario 'display options, Rock Paper Scissors' do
    register_and_play
    expect(page).to have_button 'Rock'
    expect(page).to have_button 'Paper'
    expect(page).to have_button 'Scissors'
  end

  scenario 'select an option and display choice' do
    register_and_play
    click_on 'Paper'
    expect(page).to have_content 'You chose Paper'
  end

  scenario 'I win' do
    register_and_play
    opponent_hand_rock
    click_on 'Paper'
    expect(page).to have_content 'You win!'
  end

  scenario 'I lose' do
    register_and_play
    opponent_hand_scissors
    click_on 'Paper'
    expect(page).to have_content 'You lose!'
  end
  
  scenario 'draw' do
    register_and_play
    opponent_hand_paper
    click_on 'Paper'
    expect(page).to have_content 'Tie game!'
  end
end
