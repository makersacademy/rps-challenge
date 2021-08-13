require 'spec_helper'

feature 'visiting the site for the first time' do
  describe 'welcome page' do
    it 'shows the correct heading' do
      visit('/')
      expect(page).to have_content('Rock, Paper, Scissors!')
    end
  end

  scenario 'user submits player names' do
    skip 'TODO'
  end
end
