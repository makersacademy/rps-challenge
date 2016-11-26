require  'spec_helper'

feature 'game' do

  before do
    visit '/'
    fill_in('player1_name', with: 'A')
    fill_in('player2_name', with: 'B')
    click_button('Submit')
  end
  scenario 'see the three options' do
    expect(page).to have_button 'Rock'
    expect(page).to have_button 'Paper'
    expect(page).to have_button 'Scissors'
  end

  scenario 'player will choose an option' do
    click_button 'Rock'
    expect(page).to have_content 'You picked Rock'
  end

  scenario 'game will choose an option' do
    click_button 'Rock'
    expect(page).to have_content "Computer picked Rock"
  end
end
