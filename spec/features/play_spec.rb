require 'spec_helper'

feature 'play RPS' do
  let(:opponent_hand) { ['Rock', 'Paper', 'Scissors'].sample }

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
end
