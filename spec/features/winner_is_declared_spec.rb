feature 'winner is announced' do
  scenario 'player 1 plays rock, player 2 scissors' do
    sign_in_and_play
    rock_scissors
    expect(page).to have_content("Lord Looney has won!")
  end
end
