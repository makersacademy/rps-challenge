require 'spec_helper'

feature 'Playing a game' do
  before do
    visit '/'
    fill_in 'name', with: 'Mohammed'
    click_button 'Submit'
    expect(page).to have_content 'Mohammed'
  end
  
  scenario 'See the options available' do
    expect(page).to have_button 'Rock'
    expect(page).to have_button 'Paper'
    expect(page).to have_button 'Scissors'
  end

  scenario 'Choose a shape' do
    click_button 'Rock'
    expect(page).to have_content 'You chose Rock!'
  end
end