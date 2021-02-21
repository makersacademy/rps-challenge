feature 'delivers game over message' do
  scenario 'when player is first to 10' do
    sign_in_and_play
    win_game
    expect(page).to have_content("YOU ARE THE CHAMPION!!!")
  end
  scenario 'when computer is first to 10' do
    sign_in_and_play
    lose_game
    expect(page).to have_content("You are a loser")
  end
end
