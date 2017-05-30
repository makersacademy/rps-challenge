feature 'should allow player to save game' do

  feature 'one player game' do
    scenario 'player can see Save button at end of game' do
      allow(Game::WEAPONS).to receive(:sample) { :scissors }
      one_player_sign_in_play_rock
      click_button('Save Game')
    end

    scenario 'player gets confirmation that game is saved' do
      allow(Game::WEAPONS).to receive(:sample) { :scissors }
      one_player_sign_in_play_rock
      click_button('Save Game')
      expect(page).to have_content 'Your game has been saved'
    end
  end

  feature 'two player game' do
    scenario 'player can see Save button at end of game' do
      two_player_sign_in_and_play
      click_button('Save Game')
    end

    scenario 'player gets confirmation that game is saved' do
      two_player_sign_in_and_play
      click_button('Save Game')
      expect(page).to have_content 'Your game has been saved'
    end
  end

end
