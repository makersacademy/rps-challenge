feature 'enter name' do
  context 'homepage' do
    scenario 'Can enter a name for player 1' do
      sign_in_and_play
      expect(page).to have_content('Welcome Al to Rock, Paper, Scissors :)')
    end
  end
end
