feature '1 Player game' do
  feature 'Can store player name' do
    scenario 'when submitting it on the website' do
      one_player_setup
      expect(page).to have_content 'Kelvin'
    end
  end

  feature 'Can play RPS' do
    scenario 'Should be able to pick rock' do
      one_player_setup
      expect(page).to have_selector(:link_or_button, 'Rock')
    end

    scenario 'Should be able to pick paper' do
      one_player_setup
      expect(page).to have_selector(:link_or_button, 'Paper')
    end

    scenario 'Should be able to pick scissors' do
      one_player_setup
      expect(page).to have_selector(:link_or_button, 'Scissors')
    end

    scenario 'Should be able to pick lizard' do
      one_player_setup
      expect(page).to have_selector(:link_or_button, 'Lizard')
    end

    scenario 'Should be able to pick spock' do
      one_player_setup
      expect(page).to have_selector(:link_or_button, 'Spock')
    end

    scenario 'Can win / lose / draw' do
      one_player_setup
      click_button('Rock')
      expect(page).to have_content 'Play again?'
    end

    scenario 'has a button to play again' do
      one_player_setup
      click_button('Rock')
      expect(page).to have_selector(:link_or_button, 'Play!')
    end

    scenario 'Can take you back to play again' do
      one_player_setup
      click_button('Rock')
      click_button('Play!')
      expect(page).to have_selector(:link_or_button, 'Rock')
    end
  end
end

feature '2 Player game' do
  feature 'Can store players name' do
    scenario 'when submitting it on the website' do
      two_player_setup
      expect(page).to have_content 'Kelvin'
    end

    scenario 'when submitting it on the website' do
      two_player_setup
      click_button('Rock')
      expect(page).to have_content 'Tom'
    end
  end

  feature 'Can play RPS' do
    scenario 'P1 should be able to pick rock' do
      two_player_setup
      expect(page).to have_selector(:link_or_button, 'Rock')
    end

    scenario 'P1 should be able to pick paper' do
      two_player_setup
      expect(page).to have_selector(:link_or_button, 'Paper')
    end

    scenario 'P1 should be able to pick scissors' do
      two_player_setup
      expect(page).to have_selector(:link_or_button, 'Scissors')
    end

    scenario 'P1 should be able to pick lizard' do
      two_player_setup
      expect(page).to have_selector(:link_or_button, 'Lizard')
    end

    scenario 'P1 should be able to pick spock' do
      two_player_setup
      expect(page).to have_selector(:link_or_button, 'Spock')
    end

    scenario 'P2 should be able to pick rock' do
      two_player_setup
      click_button('Rock')
      expect(page).to have_selector(:link_or_button, 'Rock')
    end

    scenario 'P2 should be able to pick paper' do
      two_player_setup
      click_button('Rock')
      expect(page).to have_selector(:link_or_button, 'Paper')
    end

    scenario 'P2 should be able to pick scissors' do
      two_player_setup
      click_button('Rock')
      expect(page).to have_selector(:link_or_button, 'Scissors')
    end

    scenario 'P2 should be able to pick lizard' do
      two_player_setup
      click_button('Rock')
      expect(page).to have_selector(:link_or_button, 'Lizard')
    end

    scenario 'P2 should be able to pick spock' do
      two_player_setup
      click_button('Rock')
      expect(page).to have_selector(:link_or_button, 'Spock')
    end

    scenario 'Can win / lose / draw' do
      two_player_setup
      click_button('Rock')
      click_button('Scissors')
      expect(page).to have_content 'Kelvin, you won!'
    end

    scenario 'has a button to play again' do
      two_player_setup
      click_button('Rock')
      click_button('Rock')
      expect(page).to have_selector(:link_or_button, 'Play!')
    end

    scenario 'Can take you back to play again' do
      two_player_setup
      click_button('Rock')
      click_button('Rock')
      click_button('Play!')
      expect(page).to have_content 'Choose your weapon'
    end
  end
end
