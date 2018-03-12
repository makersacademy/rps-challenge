require 'spec_helper'

feature 'playning a game' do
  before do
    visit '/'
    fill_in :name, with: 'Giacomo'
    click_button 'Submit'
  end

  scenario ' see the shepe options' do
    expect(page).to have_button 'Rock'
    expect(page).to have_button 'Paper'
    expect(page).to have_button 'Scissors'
  end

  scenario 'can choice one of the shape' do
    click_button 'Rock'
    expect(page).to have_content 'You chose Rock'
    # click_button 'Paper'
    # expect(page).to have_content 'You chose Paper'
    # click_button 'Scissors'
    # expect(page).to have_content 'You chose Scissors'
  end
  
end
