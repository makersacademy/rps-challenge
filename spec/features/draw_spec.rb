feature 'draw' do
  scenario 'Scores do not change when there is a draw' do
    single_player_game
    draw
    expect(page).to have_content("John: 0")
    expect(page).to have_content("Computer: 0")
  end

  scenario 'prints its a draw' do
    single_player_game
    draw
    expect(page).to have_content("It's a Draw")
    expect(page).to have_no_content("Wins")
  end
end
