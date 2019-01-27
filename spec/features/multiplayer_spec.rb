feature 'Multiplayer' do
  scenario 'should input two players' do
    load_and_play_two_player
    expect(page).to have_content "James"
  end

  scenario 'should allow 2nd player to take turns' do
    load_and_play_two_player
    user_move_rock
    expect(page).to have_content "Your turn, James"
  end

  scenario 'should show results of 2 player match' do
    load_and_play_two_player
    user_move_rock
    user_move_rock
    expect(page).to have_content "draw"
  end
end
