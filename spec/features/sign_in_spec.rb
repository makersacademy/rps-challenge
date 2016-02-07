feature 'Players sign in' do
  context 'when playing single player' do
    scenario 'displays player\'s name' do
      single_sign_in
      expect(page).to have_content('Player 1 vs.')
    end
  end

  context 'when playing multiplayer' do
    scenario 'displays players\' names' do
      multi_sign_in
      expect(page).to have_content('Player 1 vs. Player 2')
    end
  end
end
