require 'spec_helper'

feature 'Playing a single player game' do
  context '#single_gameplay' do
    scenario 'page should say player 1 with name' do
      visit '/'
      click_button 'Single Player Mode'
      fill_in('name', with: 'Leon')
      click_button 'Submit'
      expect(page).to have_content 'Player 1: Leon'
    end

    scenario 'page should have a submit button' do
      visit '/'
      click_button 'Single Player Mode'
      fill_in('name', with: 'Leon')
      click_button 'Submit'
      expect(page).to have_button 'Submit'
    end

    scenario 'match outcome should say player 1 wins consistent with API' do
      visit '/'
      click_button 'Single Player Mode'
      fill_in('name', with: 'Leon')
      click_button 'Submit'
      select('Rock', from: 'move')
      allow($GAME.player_2).to receive(:final_move) { :scissors }
      click_button 'Submit'
      expect(page).to have_content 'Player 1 wins this round!'
    end

    scenario 'match outcome should say player 2 wins consistent with API' do
      visit '/'
      click_button 'Single Player Mode'
      fill_in('name', with: 'Leon')
      click_button 'Submit'
      select('Rock', from: 'move')
      allow($GAME.player_2).to receive(:final_move) { :paper }
      click_button 'Submit'
      expect(page).to have_content 'Player 2 wins this round!'
    end

    scenario 'match outcome should draw consistent with API' do
      visit '/'
      click_button 'Single Player Mode'
      fill_in('name', with: 'Leon')
      click_button 'Submit'
      select('Rock', from: 'move')
      allow($GAME.player_2).to receive(:final_move) { :rock }
      click_button 'Submit'
      expect(page).to have_content 'Match Outcome: Draw'
    end

    scenario 'page should move to result page when there is a winner' do
      visit '/'
      click_button 'Single Player Mode'
      fill_in('name', with: 'Leon')
      click_button 'Submit'
      select('Rock', from: 'move')
      allow($GAME.player_2).to receive(:final_move) { :scissors }
      click_button 'Submit'
      click_button 'Next Round'
      select('Rock', from: 'move')
      allow($GAME.player_2).to receive(:final_move) { :scissors }
      click_button 'Submit'
      expect(current_path).to eq '/result'
    end

    scenario 'page should say player 1 wins after winning 2 times' do
      visit '/'
      click_button 'Single Player Mode'
      fill_in('name', with: 'Leon')
      click_button 'Submit'
      select('Rock', from: 'move')
      allow($GAME.player_2).to receive(:final_move) { :scissors }
      click_button 'Submit'
      click_button 'Next Round'
      select('Rock', from: 'move')
      allow($GAME.player_2).to receive(:final_move) { :scissors }
      click_button 'Submit'
      expect(page).to have_content 'Congratulations Leon! You have won!'
    end

    scenario 'page should say computer player has won if player 1 loses' do
      visit '/'
      click_button 'Single Player Mode'
      fill_in('name', with: 'Leon')
      click_button 'Submit'
      select('Rock', from: 'move')
      allow($GAME.player_2).to receive(:final_move) { :paper }
      click_button 'Submit'
      click_button 'Next Round'
      select('Rock', from: 'move')
      allow($GAME.player_2).to receive(:final_move) { :paper }
      click_button 'Submit'
      expect(page).to have_content 'You lost! Perhaps you\'ll have more luck next time.'
    end
  end
end