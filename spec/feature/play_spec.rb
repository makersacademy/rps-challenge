require 'spec_helper'

feature 'playing a game' do

  before do
    visit '/'
    fill_in 'name', with: 'Jane'
    click_button 'Submit'
  end

  scenario 'see the choices' do
    expect(page).to have_button 'Rock'
    expect(page).to have_button 'Paper'
    expect(page).to have_button 'Scissors'
  end

  scenario 'choose an option' do
    click_button 'Rock'
    expect(page).to have_content 'You chose Rock!'
  end



end