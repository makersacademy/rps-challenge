feature 'The first player can win the game' do
  scenario 'in a two player game' do
    sign_in_two_players
    select_move('Rock')
    select_move('Scissors')
    expect(page).to have_content 'Well done, Billy!'
  end
end

feature 'The second player can win the game' do
  scenario 'in a two player game' do
    sign_in_two_players
    select_move('Rock')
    select_move('Paper')
    expect(page).to have_content 'Well done, Barry!'
  end
end

feature 'The game can end in a draw' do
  scenario 'in a two player game' do
    sign_in_two_players
    select_move('Rock')
    select_move('Rock')
    expect(page).to have_content "It's a draw"
  end
end
