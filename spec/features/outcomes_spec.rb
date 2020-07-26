require_relative '../spec_helper'
require_relative './web_helpers'

feature 'Victory' do

  context 'Gameplay' do

    it 'Victory: Paper vs Rock' do
      homepage_sign_in
      select_paper
      srand(2)
      change_turns
      expect(page).to have_content 'Rock'
      change_turns
      expect(page).to have_button('Restart')
      expect(page).to have_content(/Daniel wins/i)
      expect(page).to_not have_button 'Rock'
    end

    it 'Tie: Rock vs Rock' do
      homepage_sign_in
      select_rock
      srand(2)
      change_turns
      change_turns
      expect(page).to have_button('Rock')
      expect(page).to have_content(/the game is a tie/i)
    end



  end

end