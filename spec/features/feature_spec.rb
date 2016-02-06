require 'spec_helper'
require 'web_helpers'
require_relative '../../lib/game'
require_relative '../../app'
require_relative '../../lib/player'

feature 'US1 - Player can register their name' do
  scenario 'Returns the user name that the player inputs' do
    #visual_test
    sign_in_and_play
    expect(page).to have_content 'Welcome Bob, are you ready to play RPS?'
  end
end

feature 'US2 - Player can play a game of Rock, Paper' do

  context 'Player picks Rock' do
    scenario 'CPU picks Rock' do
      #visual_test
      allow_any_instance_of(Game).to receive(:cpu_hand).and_return("Rock")
      sign_in_and_play
      click_link "Let's Play!"
      choose 'Rock'
      click_button 'Play'
      expect(page).to have_content 'The result is a Draw. You both picked Rock.'
    end

    it 'CPU picks Scissors' do
      allow_any_instance_of(Game).to receive(:cpu_hand).and_return("Scissors")
      sign_in_and_play
      click_link "Let's Play!"
      choose 'Rock'
      click_button 'Play'
      expect(page).to have_content 'The result is a Win! Rock beats Scissors.'      
    end

    it 'CPU picks Paper' do
      allow_any_instance_of(Game).to receive(:cpu_hand).and_return("Paper")
      sign_in_and_play
      click_link "Let's Play!"
      choose 'Rock'
      click_button 'Play'
      expect(page).to have_content 'The result is a Loss! Paper beats Rock.'     
    end
  end

  context 'Player picks Paper' do
    it 'CPU picks Rock' do  
      allow_any_instance_of(Game).to receive(:cpu_hand).and_return("Rock")
      sign_in_and_play
      click_link "Let's Play!"
      choose 'Paper'
      click_button 'Play'
      expect(page).to have_content 'The result is a Win! Paper beats Rock.'         
    end
    
    it 'CPU picks Scissors' do
      allow_any_instance_of(Game).to receive(:cpu_hand).and_return("Scissors")
      sign_in_and_play
      click_link "Let's Play!"
      choose 'Paper'
      click_button 'Play'
      expect(page).to have_content 'The result is a Loss! Scissors beats Paper.'    
    end

    it 'CPU picks Paper' do
      allow_any_instance_of(Game).to receive(:cpu_hand).and_return("Paper")
      sign_in_and_play
      click_link "Let's Play!"
      choose 'Paper'
      click_button 'Play'
      expect(page).to have_content 'The result is a Draw. You both picked Paper.'    
    end
  end

  context 'Player picks Scissors' do
    it 'CPU picks Rock' do  
      allow_any_instance_of(Game).to receive(:cpu_hand).and_return("Rock")
      sign_in_and_play
      click_link "Let's Play!"
      choose 'Scissors'
      click_button 'Play'
      expect(page).to have_content 'The result is a Loss! Rock beats Scissors.'    
    end
    
    it 'CPU picks Scissors' do
      allow_any_instance_of(Game).to receive(:cpu_hand).and_return("Scissors")
      sign_in_and_play
      click_link "Let's Play!"
      choose 'Scissors'
      click_button 'Play'
      expect(page).to have_content 'The result is a Draw. You both picked Scissors.'   
    end

    it 'CPU picks Paper' do
      allow_any_instance_of(Game).to receive(:cpu_hand).and_return("Paper")
      sign_in_and_play
      click_link "Let's Play!"
      choose 'Scissors'
      click_button 'Play'
      expect(page).to have_content 'The result is a Win! Scissors beats Paper.'  
    end
  end
end    
