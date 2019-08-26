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

  scenario 'it can click paper' do
    visit '/'
    fill_in :player1, with: 'Eloise'
    click_button 'Submit'
    click_button 'Paper'
    expect(page).to have_content 'You picked Paper'
  end

  scenario 'it can click scissors' do
    visit '/'
    fill_in :player1, with: 'Eloise'
    click_button 'Submit'
    click_button 'Scissors'
    expect(page).to have_content 'You picked Scissors'
  end

# Wasn't sure how to determine value for randomisation of the computer pick
  # scenario 'it can give the computer choice' do
  #   visit '/'
  #   fill_in :player1, with: 'Eloise'
  #   click_button 'Submit'
  #   click_button 'Scissors'
  #   expect(page).to have_content ''
  # end
end
