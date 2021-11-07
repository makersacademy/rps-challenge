require 'spec_helper'

feature 'Playing a game' do
  before do
    visit '/'
    fill_in 'name', with: 'Mohammed'
    click_button 'Submit'
    expect(page).to have_content 'Mohammed'
  end
  
  scenario 'See the options available' do
    expect(page).to have_content 'Rock'
    expect(page).to have_content 'Paper'
    expect(page).to have_content 'Scissors'
  end
end