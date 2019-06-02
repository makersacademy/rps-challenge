feature '2player Gamepage Two' do

  scenario 'the gamepage has specific text' do
    start_two_player_game
    click_button('ROCK')
    expect(page).to have_content('Now it\'s your turn, Judith')
  end

  scenario 'there is a choice of r, p or s' do
    start_two_player_game
    click_button('ROCK')
    expect(page).to have_button('ROCK')
    expect(page).to have_button('PAPER')
    expect(page).to have_button('SCISSORS')
  end
end
