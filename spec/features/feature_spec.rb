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

    xit 'CPU picks Paper' do
    end
  end

  context 'Player picks Paper' do
    xit 'CPU picks Rock' do  
    end
  
    xit 'CPU picks Scissors' do
    end

    xit 'CPU picks Paper' do
    end
  end

  context 'Player picks Scissors' do
    xit 'CPU picks Rock' do  
    end
  
    xit 'CPU picks Scissors' do
    end

    xit 'CPU picks Paper' do
    end
  end
end    
