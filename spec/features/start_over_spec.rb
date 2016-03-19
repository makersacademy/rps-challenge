require 'spec_helper'

feature 'Start over' do
  scenario 'start a fresh game' do
    fill_in_name_and_start
    click_button 'Rock'
    click_button 'Start Over'
    fill_in 'player1_name', :with => 'Luigi'
    click_button 'Start game'
    expect(page).to have_content('Luigi')
    click_button 'Rock'
    click_button 'Start Over'
    fill_in 'player1_name', :with => 'Jordan'
    click_button 'Start game'
    expect(page).to have_content('Jordan')
  end
end
