feature 'Full game' do
  context 'Player 1 submitting rock, paper or scissors' do
    scenario 'selects rock' do
      sign_in_and_play
      choose_rock
      click_button 'OK'
      expect(page).to have_content('Shall we play again?')
    end
    scenario 'selects paper' do
      sign_in_and_play
      choose_paper
      click_button 'OK'
      expect(page).to have_content('Shall we play again?')
    end
    scenario 'selects scissors' do
      sign_in_and_play
      choose_scissors
      click_button 'OK'
      expect(page).to have_content('Shall we play again?')
    end
  end
end
