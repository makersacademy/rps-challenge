feature 'playing a game of RPS' do

  scenario 'be able to see the move options' do
      sign_in_and_play
      expect(page).to have_content("Rock")
      expect(page).to have_content("Paper")
      expect(page).to have_content("Scissors")
  end
end
