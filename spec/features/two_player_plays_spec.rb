feature 'two players can play the game' do
  scenario 'both players pick' do
    two_player_sign_in
    choose('player_1_rock')
    choose('player_2_rock')
    click_button('play')
    expect(page).to have_content('Dec picked rock.')
    expect(page).to have_content('Dan picked rock.')
  end

  scenario 'players can draw' do
    two_player_sign_in
    choose('player_1_rock')
    choose('player_2_rock')
    click_button('play')
    expect(page).to have_content("It's a draw!")
  end

  scenario 'player 1 can win' do
    two_player_sign_in
    choose('player_1_rock')
    choose('player_2_scissors')
    click_button('play')
    expect(page).to have_content("Dec wins")
  end

  scenario 'player 2 can win' do
    two_player_sign_in
    choose('player_1_spock')
    choose('player_2_lizard')
    click_button('play')
    expect(page).to have_content("Dan wins")
  end

  scenario 'two players can play again' do
    two_player_sign_in
    choose('player_1_rock')
    choose('player_2_paper')
    click_button('play')
    click_button('play again')
    expect(page).to have_content('Player 1: Dec')
    expect(page).to have_content('Player 2: Dan')
  end
end
