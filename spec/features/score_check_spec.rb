feature 'The Score' do
  scenario 'expect scores to be 1 : 0' do
    single_player_game
    player_win
    expect(page).to have_content("John: 1")
    expect(page).to have_content("Computer: 0")
  end

  scenario 'expect scores to be 1 : 1' do
    single_player_game
    player_win
    click_button('Play Again')
    ai_win
    expect(page).to have_content("John: 1")
    expect(page).to have_content("Computer: 1")
  end

  scenario 'expect scores to be 3 : 0' do
    single_player_game
    3.times { player_win ; click_button('Play Again') }
    expect(page).to have_content("John: 3")
    expect(page).to have_content("Computer: 0")
  end

end
