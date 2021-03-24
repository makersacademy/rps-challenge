feature 'Player 1 name' do
  scenario 'see player 1 name' do
    sign_in_and_play
    expect(page).to have_content "Let's play ROCK PAPER SCISSORS Nata!"
  end
end
