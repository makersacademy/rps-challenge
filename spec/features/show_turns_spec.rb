feature 'show turns' do
  context 'seeing the current turn' do
    scenario 'at the start of the game' do
      sign_in_and_play
      click_link 'Start Game'
      expect(page).to have_content "Timmy's turn"
    end

    scenario 'after player1 moves' do
      sign_in_and_play
      click_link 'Start Game'
      click_button 'rock'
      expect(page).to have_content "Shaun's turn"
    end
  end
end
