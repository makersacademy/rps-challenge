feature 'The user can be congratulated for a win' do
  scenario 'once the user has selected a move' do
    sign_in_one_player
    srand(3)
    select_move('Rock')
    expect(page).to have_content 'Well done, Billy!'
  end
end

feature 'The user can be consoled for a defeat' do
  scenario 'once the user has selected a move' do
    sign_in_one_player
    srand(3)
    select_move('Paper')
    expect(page).to have_content 'Unlucky, Billy.'
  end
end

feature 'The user can see they have drawn' do
  scenario 'once the user has selected a move' do
    sign_in_one_player
    srand(3)
    select_move('Scissors')
    expect(page).to have_content "It's a draw!"
  end
end
