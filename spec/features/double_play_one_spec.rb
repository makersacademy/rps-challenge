feature '2player Gamepage One' do

  scenario 'the gamepage has specific text' do
    start_two_player_game
    expect(page).to have_content('Choose your weapon, Ed')
  end

  scenario 'there is a choice of r, p or s' do
    start_two_player_game
    expect(page).to have_button('ROCK')
    expect(page).to have_button('PAPER')
    expect(page).to have_button('SCISSORS')
  end
end
