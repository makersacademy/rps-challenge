require 'spec_helper'

feature 'Playing game' do
 
  before do
    visit('/')
    fill_in :player_name, with: 'Jenny'
    click_button 'Submit'
  end

  scenario 'See options: Rock, Paper, Scissors' do
    expect(page).to have_content 'Rock'
    expect(page).to have_content 'Paper'
    expect(page).to have_content 'Scissors'
  end

  scenario 'Choose an option' do
    fill_in :choice, with: 'Paper'
    expect(page).to have_content 'Paper'
  end

  scenario 'See the result' do
    fill_in :choice, with: 'Paper'
    expect(page).to have_content 'Result:'
  end
end
