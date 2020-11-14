feature 'when theres 2 players, player1 goes first' do
  scenario 'player1 can see go first' do
    sign_in_friend
    expect(page).to have_content "Your answer will go here"
  end
end
