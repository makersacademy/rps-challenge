require_relative '../spec_helper'
require_relative './web_helpers'

feature 'Victory' do

  context 'Gameplay' do

    it 'Victory: Paper vs Rock' do
      srand(2)
      homepage_sign_in
      select_paper
      change_turns
      expect(page).to have_content 'Rock'
      expect(page).to have_button 'Restart'
      expect(page).to_not have_button 'Change turns'
    end

  end

end

#TODO: Hide results if the player is a computer. Make the announcements on the change turns page