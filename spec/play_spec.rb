require  'spec_helper'

feature 'play' do

  before do
    visit '/'
    fill_in('player1_name', with: 'A')
    click_button('Submit')
  end

  scenario 'see my name in lights' do
    expect(page).to have_content 'A vs Computer'
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
    click_button 'Paper'
    expect(page).to have_content 'You picked Paper'
  end

  scenario 'player will choose an option' do
    click_button 'Scissors'
    expect(page).to have_content 'You picked Scissors'
  end


end
