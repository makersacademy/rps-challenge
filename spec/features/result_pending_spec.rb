feature 'Pending page: while waiting for the other to make a move' do

  before(:each) do
    enter_game
    both_sign_in_and_enter_game
  end

  scenario 'Player 1 chooses a move first' do
    visit '/p1_play'
    click_button('ROCK')
    expect(page).to have_content('Player 2 is chooseing the move...')
  end

  scenario 'Player 2 chooses a move first' do
    visit '/p2_play'
    click_button('ROCK')
    expect(page).to have_content('Player 1 is chooseing the move...')
  end
end
