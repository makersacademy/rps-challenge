require 'spec_helper'

feature 'Playing the game' do

  before do
    visit '/'
    fill_in 'name', with: "Mick"
    click_button 'Enter'
    click_button 'Start new game!'
  end

  scenario 'expect to have an option to select Rock' do
    find_button 'Rock'
  end

  scenario 'expect to have an option to select Paper' do
    find_button 'Paper'
  end

  scenario 'expect to have an option to select Scissors' do
    find_button 'Scissors'
  end

  feature 'playing against the computer (randomly selecting its option)' do

    scenario 'after selecting my option I see the result' do
      click_button 'Rock'
      expect(page).to have_content "wins"
    end

    scenario 'shows my selection along with the result' do
      click_button 'Paper'
      expect(page).to have_content "Mick is armed with Paper"
    end

    scenario 'shows the computer\'s selection along with the result' do
      click_button 'Scissors'
      expect(page).to have_content "Computer is armed with"
    end

  end

end
