feature 'Testing infrastructure' do

  describe '#SinglePlayer' do
    scenario 'Can run app and check page content' do
      visit('/')
      expect(page).to have_content 'Rock / Paper / Scissors'
    end

    scenario 'Can load single player page' do
      visit('/')
      single_player
      expect(page).to have_content 'Player Name :'
    end

    scenario 'Can accept and display names given' do
      visit('/')
      single_player
      enter_one_name_and_play
      expect(page).to have_content "Paul vs. Computer"
    end

    scenario 'Can display the correct move input' do
      visit('/')
      single_player
      enter_one_name_and_play
      click_button 'Rock'
      expect(page).to have_content "Paul picked: Rock"
    end

    scenario 'Can display the correct score on a win' do
      allow_any_instance_of(Computer).to receive(:move) { "Scissors" }
      visit('/')
      single_player
      enter_one_name_and_play
      click_button 'Rock'
      expect(page).to have_content "Paul wins this round!"
    end

    scenario 'Can display game_over screen and winner on a win' do
      message = "Game Over! :( Paul Wins! Final Score: Paul = 3 Computer = 0"
      allow_any_instance_of(Computer).to receive(:move) { "Scissors" }
      visit('/')
      single_player
      enter_one_name_and_play
      2.times { rock_and_ok }
      click_button 'Rock'
      expect(page).to have_content message
    end
  # End of Single-player
  end

  describe '#Multiplayer' do
    scenario 'Can run app and check page content' do
      visit('/')
      multi_player
      expect(page).to have_content 'Player 2 Name :'
    end

    scenario 'Can accept and display both given names' do
      visit('/')
      multi_player
      enter_two_names_and_play
      expect(page).to have_content 'Paul vs. John'
    end

    scenario 'Can switch turns correctly' do
      visit('/')
      multi_player
      enter_two_names_and_play
      click_button 'Rock'
      expect(page).to have_content "John's Turn"
    end

    scenario 'Can display game_over screen and winner on a win' do
      message = "Game Over! :( John Wins! Final Score: Paul = 0 John = 3"
      visit('/')
      multi_player
      enter_two_names_and_play
      2.times { scissors_and_rock }
      click_button 'Scissors'
      click_button 'Rock'
      expect(page).to have_content message
    end
  # End of Multi-player
  end
# End of infrastructure
end
