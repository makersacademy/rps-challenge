feature 'play again' do
  scenario 'after game is over, player can play again' do
    sign_in_and_play
    click_button "Play Rock, Paper, Scissors"
    click_button "ROCK"
    click_link "Play again"
    expect(page).to have_content "Your move, Bob"
  end
end
