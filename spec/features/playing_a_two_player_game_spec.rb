require 'spec_helper'
require 'helper'

feature 'Playing a two player game' do
  scenario 'requests browser one to pick a move' do
    setup_two_players_gameplay
    browser(:one) do
      expect(page).to have_content 'Pick a move Ryan'
    end
  end

  scenario 'requests browser one to pick a move' do
    setup_two_players_gameplay
    browser(:two) do
      expect(page).to have_content 'Pick a move Leon'
    end
  end

  scenario 'player 1 waits in lobby when player 2 hasn\'t entered his move' do
    setup_two_players_gameplay

    browser(:one) do
      select('Rock', from: 'move')
      click_button 'Submit'
      expect(current_path).to eq '/lobby'
    end
  end

  scenario 'player 2 waits in lobby when player 1 hasn\'t entered his move' do
    setup_two_players_gameplay

    browser(:two) do
      select('Rock', from: 'move')
      click_button 'Submit'
      expect(current_path).to eq '/lobby'
    end
  end

  scenario 'browser 1 is player 1 if he enters name first' do
    setup_two_players_gameplay

    browser(:one) do
      select('Rock', from: 'move')
      click_button 'Submit'
    end

    browser(:two) do
      select('Paper', from: 'move')
      click_button 'Submit'
    end

    browser(:one) do
      visit '/lobby'
      expect(page).to have_content 'Player 1: Ryan'
    end
  end

  scenario 'outcome should draw if both players choose the same move' do
    setup_two_players_gameplay

    browser(:one) do
      select('Rock', from: 'move')
      click_button 'Submit'
    end

    browser(:two) do
      select('Rock', from: 'move')
      click_button 'Submit'
      expect(page).to have_content 'Draw'
    end
  end

  scenario 'player 1 wins consistent with API' do
    setup_two_players_gameplay

    browser(:one) do
      select('Rock', from: 'move')
      click_button 'Submit'
    end

    browser(:two) do
      select('Scissors', from: 'move')
      click_button 'Submit'
    end

    browser(:one) do
      visit '/lobby'
      expect(page).to have_content 'Player 1 wins this round!'
    end
  end

  scenario 'player 1 loses consistent with API' do
    setup_two_players_gameplay

    browser(:one) do
      select('Rock', from: 'move')
      click_button 'Submit'
    end

    browser(:two) do
      select('Paper', from: 'move')
      click_button 'Submit'
    end

    browser(:one) do
      visit '/lobby'
      expect(page).to have_content 'Player 2 wins this round'
    end
  end

  scenario 'player is pushed to results page after 2 wins' do
    setup_two_players_gameplay

    browser(:one) do
      select('Rock', from: 'move')
      click_button 'Submit'
    end

    browser(:two) do
      select('Paper', from: 'move')
      click_button 'Submit'
    end

    browser(:one) do
      visit '/lobby'
      click_button 'Next Round'
    end

    browser(:two) do
      visit '/lobby'
      click_button 'Next Round'
    end

    browser(:one) do
      select('Rock', from: 'move')
      click_button 'Submit'
    end

    browser(:two) do
      select('Paper', from: 'move')
      click_button 'Submit'
      expect(page).to have_content 'Congratulations Leon'
    end
  end

  scenario 'player is pushed to results page after 2 wins' do
    setup_two_players_gameplay

    browser(:one) do
      select('Paper', from: 'move')
      click_button 'Submit'
    end

    browser(:two) do
      select('Rock', from: 'move')
      click_button 'Submit'
    end

    browser(:one) do
      visit '/lobby'
      click_button 'Next Round'
    end

    browser(:two) do
      visit '/lobby'
      click_button 'Next Round'
    end

    browser(:one) do
      select('Paper', from: 'move')
      click_button 'Submit'
    end

    browser(:two) do
      select('Rock', from: 'move')
      click_button 'Submit'
      expect(page).to have_content 'Congratulations Ryan'
    end
  end

end