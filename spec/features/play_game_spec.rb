feature 'Playing the game' do
  scenario 'player can choose rock, paper or scissors' do
    sign_in
    expect(page).to have_button("Rock")
    expect(page).to have_button("Paper")
    expect(page).to have_button("Scissors")
  end

  scenario 'player choice takes them to the next page' do
    sign_in_and_play
    expect(page).to have_button("Play again?")
  end
end
