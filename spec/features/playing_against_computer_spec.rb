feature 'Playing against the computer' do

  PLAY_SEED = 221321

  scenario 'computer selects option' do
    single_player_sign_in
    click_button('Rock')
    message = find(:css,'#computer').text.strip
    expect(possible_messages).to include(message)
  end

  scenario 'computer selects random option' do
    srand(PLAY_SEED)
    single_player_sign_in
    click_button('Rock')
    expect(page).to have_content 'Computer used Scissors'
  end

  scenario 'can play multiple times' do
    single_player_sign_in
    click_button('Rock')
    click_button('Play Again')
    expect(page).to have_current_path('/single-player/play')
  end
end
