feature 'Starting game' do
  scenario 'player can enter name' do
    single_player_sign_in
    expect(page).to have_content "Kevin vs. Computer"
  end
  scenario 'player can start a new game' do
    single_player_sign_in
    expect(page).to have_content "Make your choice: Rock, Paper, or Scissors!"
  end
end
