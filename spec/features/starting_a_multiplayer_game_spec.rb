require 'spec_helper'

feature 'Starting a single player game against computer' do
  context '#homepage' do
    scenario 'homepage asks users to select a player mode' do
      visit '/'
      expect(page).to have_content 'Please select player mode'
    end

    scenario 'displays single player button' do
      visit '/'
      expect(page).to have_button 'Single Player Mode'
    end
  end

  context '#single_player' do
    scenario 'asks for name before proceeding to next page' do
      visit '/'
      click_button 'Single Player Mode'
      expect(page).to have_content 'Please fill in your name:'
    end

    scenario 'current path should be single player' do
      visit '/'
      click_button 'Single Player Mode'
      expect(current_path).to eq '/single_player'
    end

    scenario 'page should refresh if user does not fill in name' do
      visit '/'
      click_button 'Single Player Mode'
      fill_in('name', with: '')
      click_button 'Submit'
      expect(current_path).to eq '/single_player'
    end
  end

  context '#single_gameplay' do
    scenario 'page should move to single gameplay path' do
      visit '/'
      click_button 'Single Player Mode'
      fill_in('name', with: 'Leon')
      click_button 'Submit'
      expect(current_path).to eq '/single_gameplay'
    end
  end
end