require 'spec_helper'

feature 'playing a game' do
  before do
    visit '/'
    fill_in 'player_1_name', with: 'Celia'
    click_button 'Submit'
  end

  scenario 'see rock paper scissors' do
    expect(page).to have_button 'Rock'
    expect(page).to have_button 'Paper'
    expect(page).to have_button 'Scissors'
  end

  scenario 'choose between rock, paper and scissors' do
    click_button 'Rock'
    expect(page).to have_content 'You choose Rock'
  end
end
