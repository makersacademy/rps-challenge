feature 'two players can play the game' do
  scenario 'both players pick' do
    two_player_sign_in
    choose('player_1_rock')
    choose('player_2_rock')
    click_button('play')
    expect(page).to have_content('Dec picked rock.')
    expect(page).to have_content('Dan picked rock.')
  end
end
