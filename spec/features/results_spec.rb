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

feature 'Playing the game' do

  context "when I submit 'Rock' and computer generates 'Scissors'" do

    scenario "my name appears as the winner" do

      allow_any_instance_of(Array).to receive(:sample).and_return('Scissors')
      sign_in_and_play
      choose("weapon", option: 'Rock')
      click_button('Submit')
      expect(page).to have_content "Winner of this match is: Dave"
    end
  end

  context "when I submit 'Scissors' and computer generates 'Rock'" do
    scenario "computer's name appears as the winner" do

      allow_any_instance_of(Array).to receive(:sample).and_return('Rock')
      sign_in_and_play
      choose("weapon", option: 'Scissors')
      click_button('Submit')
      expect(page).to have_content "Winner of this match is: Deep Blue"
    end
  end
end
