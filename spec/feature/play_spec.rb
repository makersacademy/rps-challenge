require 'spec_helper'

feature 'Playing Rock Paper Scissors' do

  before do
    visit '/'
    fill_in 'name', with: 'Ron'
    click_button 'Submit'
    expect(page).to have_content 'Ron'
  end

  scenario 'see the options to play game' do
    expect(page).to have_button 'Rock'
    expect(page).to have_button 'Paper'
    expect(page).to have_button 'Scissors'
  end

  scenario 'select a shape' do
    click_button 'Rock'
    expect(page).to have_content 'Rock selected!'
  end

end
