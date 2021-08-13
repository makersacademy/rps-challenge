require 'spec_helper'

feature 'visiting the site for the first time' do
  describe 'welcome page' do
    it 'shows the correct heading' do
      visit('/')
      expect(page).to have_content('Rock, Paper, Scissors!')
    end

    it 'allows users to provide two player names' do
      visit('/')
      fill_in 'player1', with: 'Alice'
      fill_in 'player2', with: 'Bob'
      click_button 'Go!'
      expect(page).to have_content('Alice vs. Bob')
    end
  end

  scenario 'user submits player names' do
    skip 'TODO'
  end
end
