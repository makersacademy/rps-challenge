require 'capybara/rspec'
require 'spec_helper'

feature 'play' do

  scenario 'it can click rock' do
    visit '/'
    fill_in :player1, with: 'Eloise'
    click_button 'Submit'
    click_button 'Rock'
    expect(page).to have_content 'You picked Rock'
  end

  scenario 'it can click rock' do
    visit '/'
    fill_in :player1, with: 'Eloise'
    click_button 'Submit'
    click_button 'Paper'
    expect(page).to have_content 'You picked Paper'
  end

  scenario 'it can click rock' do
    visit '/'
    fill_in :player1, with: 'Eloise'
    click_button 'Submit'
    click_button 'Scissors'
    expect(page).to have_content 'You picked Scissors'
  end
end
