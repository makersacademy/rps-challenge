require 'spec_helper'

feature 'Start playing' do
  scenario 'player is shown weapon options' do
    sign_in_and_play
    expect(page).to have_button 'Rock'
    expect(page).to have_button 'Paper'
    expect(page).to have_button 'Scissors'
  end
end
