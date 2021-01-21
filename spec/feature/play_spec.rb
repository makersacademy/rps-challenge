feature 'playing a game of RPS' do

  scenario 'be able to see the move options' do
      sign_in_and_play
      expect(page).to have_content("Rock")
      expect(page).to have_content("Paper")
      expect(page).to have_content("Scissors")
  end

  scenario 'choose a move to play' do
    sign_in_and_play
    click_button 'Rock'
    expect(page).to have_content("Rock")
  end
end
