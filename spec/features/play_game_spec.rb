feature 'Playing the game' do
  scenario 'player can choose rock, paper or scissors' do
    sign_in
    expect(page).to have_button("rock")
    expect(page).to have_button("paper")
    expect(page).to have_button("scissors")
  end

  scenario 'player choice takes them to the next page' do
    sign_in_and_play
    expect(page).to have_button("Play again?")
  end
end
