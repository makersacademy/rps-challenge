require 'spec_helper'

feature 'Display weapon' do

  context 'human player can select a weapon from rock, paper or scissors' do

    scenario 'select rock' do
      sign_in_and_play
      choose("weapon", option: "Rock")
      click_button('Submit')
      expect(page).to have_content 'Your weapon: Rock'
    end

    scenario 'select paper' do
      sign_in_and_play
      choose("weapon", option: "Paper")
      click_button('Submit')
      expect(page).to have_content 'Your weapon: Paper'
    end

    scenario 'select scissors' do
      sign_in_and_play
      choose("weapon", option: "Scissors")
      click_button('Submit')
      expect(page).to have_content 'Your weapon: Scissors'
    end

  end

end
