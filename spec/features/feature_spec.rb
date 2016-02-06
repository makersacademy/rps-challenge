require 'spec_helper'
require 'web_helpers'

feature 'US1 - Player can register their name' do
  scenario 'Returns the user name that the player inputs' do
    #visual_test
    sign_in_and_play
    expect(page).to have_content 'Welcome Bob, are you ready to play RPS?'
  end
end

feature 'US2 - Player can play a game of Rock, Paper, Scissors' do
  
  context 'Player picks Rock' do
    scenario 'CPU picks Rock' do
      sign_in_and_play
      click_link "Let's Play!"
      click_button 'Rock'
      expect(page).to have_content 'Its a draw, you both picked Rock'
    end
  
    scenario 'CPU picks Scissors' do
    end

    scenario 'CPU picks Paper' do
    end
  end

  context 'Player picks Paper' do
    scenario 'CPU picks Rock' do  
    end
  
    scenario 'CPU picks Scissors' do
    end

    scenario 'CPU picks Paper' do
    end
  end

  context 'Player picks Scissors' do
    scenario 'CPU picks Rock' do  
    end
  
    scenario 'CPU picks Scissors' do
    end

    scenario 'CPU picks Paper' do
    end
  end
end    
