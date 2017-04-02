feature 'Playing against the computer' do

  scenario 'can play multiple times' do
    single_player_sign_in
    click_button('Rock')
    click_button('Play Again')
    expect(page).to have_current_path('/single-player/play')
  end
end
