feature 'you can play multiple games' do
  scenario 'click play again to play another game' do
    sign_in
    choose('player_1_rock')
    click_button('play')
    click_button('play again')
    expect(page).to have_current_path('/play')
  end
end
