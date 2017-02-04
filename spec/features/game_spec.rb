require 'spec_helper'

  feature Game do

    before do
      sign_in
    end

    scenario 'test that the player name is displayed in welcome message when page opens' do 
      expect(page).to have_content("Welcome Courtney")
    end

    scenario 'test that buttons are on page' do
      expect(page).to have_button "Rock"
      expect(page).to have_button "Paper"
      expect(page).to have_button "Scissors"
    end

  end
