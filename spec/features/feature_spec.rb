require 'spec_helper'
require 'web_helpers'


feature 'US1 - Player can register their name' do
  scenario 'Returns the user name that the player inputs' do
    sign_in_and_play
    expect(page).to have_content 'Welcome Bob, are you ready to play RPS?'
  end
end

feature 'US2 - Player can play a game of Rock, Paper' do
  feature 'Player picks Rock' do
    before do
      sign_in_and_play
      click_link "Let's Play!"
      choose 'Rock'
    end

    scenario 'CPU picks Rock' do
      #visual_test
      allow_any_instance_of(Game).to receive(:cpu_hand).and_return("Rock")
      click_button 'Play'
      expect(page).to have_content 'The result is a Draw. You both picked Rock.'
    end

    scenario 'CPU picks Scissors' do
      allow_any_instance_of(Game).to receive(:cpu_hand).and_return("Scissors")
      click_button 'Play'
      expect(page).to have_content 'The result is a Win! Rock beats Scissors.'      
    end

    scenario 'CPU picks Paper' do
      allow_any_instance_of(Game).to receive(:cpu_hand).and_return("Paper")
      click_button 'Play'
      expect(page).to have_content 'The result is a Loss! Paper beats Rock.'     
    end
  end

  context 'Player picks Paper' do
    before do
      sign_in_and_play
      click_link "Let's Play!"
      choose 'Paper'
    end

    scenario 'CPU picks Rock' do  
      allow_any_instance_of(Game).to receive(:cpu_hand).and_return("Rock")
      click_button 'Play'
      expect(page).to have_content 'The result is a Win! Paper beats Rock.'         
    end
    
    scenario 'CPU picks Scissors' do
      allow_any_instance_of(Game).to receive(:cpu_hand).and_return("Scissors")
      click_button 'Play'
      expect(page).to have_content 'The result is a Loss! Scissors beats Paper.'    
    end

    scenario 'CPU picks Paper' do
      allow_any_instance_of(Game).to receive(:cpu_hand).and_return("Paper")
      click_button 'Play'
      expect(page).to have_content 'The result is a Draw. You both picked Paper.'    
    end
  end

  context 'Player picks Scissors' do
    before do
      sign_in_and_play
      click_link "Let's Play!"
      choose 'Scissors'
    end

    scenario 'CPU picks Rock' do  
      allow_any_instance_of(Game).to receive(:cpu_hand).and_return("Rock")
      click_button 'Play'
      expect(page).to have_content 'The result is a Loss! Rock beats Scissors.'    
    end
    
    scenario 'CPU picks Scissors' do
      allow_any_instance_of(Game).to receive(:cpu_hand).and_return("Scissors")
      click_button 'Play'
      expect(page).to have_content 'The result is a Draw. You both picked Scissors.'   
    end

    scenario 'CPU picks Paper' do
      allow_any_instance_of(Game).to receive(:cpu_hand).and_return("Paper")
      click_button 'Play'
      expect(page).to have_content 'The result is a Win! Scissors beats Paper.'  
    end
  end

  context 'Allows you to play again' do
    scenario 'resets the game' do
      allow_any_instance_of(Game).to receive(:cpu_hand).and_return("Paper")
      sign_in_and_play
      click_link "Let's Play!"
      choose 'Scissors'
      click_button 'Play'
      click_link "Play Again?"
      choose 'Rock'
      click_button 'Play'
      expect(page).to have_content 'The result is a Loss! Paper beats Rock.'
    end
  end
end    
