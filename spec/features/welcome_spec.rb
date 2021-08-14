require 'spec_helper'

feature 'visiting the site for the first time' do
  describe 'welcome page' do
    it 'shows the correct heading' do
      visit('/')
      expect(page).to have_content('Rock, Paper, Scissors!')
    end

    it 'allows users to provide a name' do
      visit('/')
      fill_in 'player', with: 'Alice'
      click_button 'Go!'
      expect(page).to have_content('Alice vs. Robot')
    end
  end
end
