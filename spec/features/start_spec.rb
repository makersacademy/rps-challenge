require 'spec_helper'

feature 'start a game' do

  before do
    visit '/'
    fill_in :player_name, with: 'Jane'
    click_button 'Submit'
  end

  scenario 'player can view options' do
    expect(page).to have_button 'Rock'
    expect(page).to have_button 'Paper'
    expect(page).to have_button 'Scissors'
  end
end
