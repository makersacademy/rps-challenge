require 'spec_helper'

describe RockPaperScissors do
  feature 'the homepage' do
    scenario 'the hompage has the title rock paper, scissors' do
      visit '/home'
      expect(page).to have_content "Rock, Paper, Scissors"
    end
  end

  feature 'player can enter a name' do
    scenario 'the player can see their name on the play page' do
      sign_in_and_play
      expect(page).to have_content "Sneaky Racoon"
    end
  end

  feature 'player confirmation message' do
    scenario 'the player can select a button called rock and receive a confirmation' do
      sign_in_and_play
      click_button 'Rock'
      expect(page).to have_content "You played Rock!"
    end

    scenario 'the player can select a button called rock and receive a confirmation' do
      sign_in_and_play
      click_button 'Paper'
      expect(page).to have_content "You played Paper!"
    end

    scenario 'the player can select a button called rock and receive a confirmation' do
      sign_in_and_play
      click_button 'Scissors'
      expect(page).to have_content "You played Scissors!"
    end
  end

end
