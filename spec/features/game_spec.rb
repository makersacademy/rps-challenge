require 'spec_helper'

  feature Game do

    scenario 'It should test that the player name is displayed in welcome message when page opens' do
      sign_in
      expect(page).to have_content("Welcome Courtney")
    end

  end
