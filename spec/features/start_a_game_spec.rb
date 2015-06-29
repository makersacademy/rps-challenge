feature 'starting a game' do

  scenario 'players can start a game' do

    $game = nil

    in_browser(:one) do
      visit '/'
      expect(page).to have_content 'Welcome to: Rock, Paper, Scissors, Spock, Lizard!'
      expect(page).to have_content 'Please register with your name.'
      fill_in('name', with: 'Michael')
      click_on 'Submit'
      expect(page).to have_content 'Thank you Michael. This is a 2 player game. Waiting for player 2 to register.'
    end

    in_browser(:two) do
      visit '/'
      expect(page).to have_content 'Welcome to: Rock, Paper, Scissors, Spock, Lizard!'
      expect(page).to have_content 'Please register with your name.'
      fill_in('name', with: 'Emma')
      click_on 'Submit'
      expect(page).to have_content 'Ready to play! It is best of 5 games. Please make your selection.'
    end

    in_browser(:one) do
      click_on 'Reload'
      expect(page).to have_content 'Ready to play! It is best of 5 games. Please make your selection.'
    end
  end
end
