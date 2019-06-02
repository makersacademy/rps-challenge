feature '1player Gamepage' do

  scenario 'the gamepage has specific text' do
    start_one_player_game
    expect(page).to have_content('Choose your weapon')
  end

  scenario 'there is a choice of r, p or s' do
    start_one_player_game
    expect(page).to have_button('ROCK')
    expect(page).to have_button('PAPER')
    expect(page).to have_button('SCISSORS')
  end
end
