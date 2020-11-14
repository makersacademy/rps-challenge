feature 'when theres 2 players' do
  scenario 'player1 can go first' do
    sign_in_friend
    expect(page).to have_content "Your answer will go here"
  end

  scenario 'after player1 has gone, its p2s turn' do
    sign_in_friend
    fill_in :player1, with: "rock"
    click_button "I'm ready!"
    expect(page).to have_content "Player 1 better not be cheating"
  end

  scenario 'p2 can then choose their turn and a winner is decided' do
    sign_in_friend
    fill_in :player1, with: "rock"
    click_button "I'm ready!"
    fill_in :player2, with: "rock"
    click_button "I'm ready!"
    expect(page).to have_content "Sheldon Drew to Leonard!"
  end
end
