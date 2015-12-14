require 'spec_helper'

feature 'Start playing' do
  before do
    sign_in_and_play
  end

  scenario 'player is shown weapon options' do
    expect(page).to have_button 'Rock'
    expect(page).to have_button 'Paper'
    expect(page).to have_button 'Scissors'
  end

  scenario 'player receives confirmation of chosen weapon' do
    click_button 'Rock'
    expect(page).to have_content 'You chose Rock!'
  end

  # scenario 'machine chooses paper' do
  # expect(page).to
end
