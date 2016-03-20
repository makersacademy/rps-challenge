feature 'Play page: upon entry completion' do

  scenario '0.0. Page displays name of player 1' do
    enter_game
    both_sign_in
    click_button('Player 1: Play game')
    expect(page).to have_content('Player 1: Misa')
  end

  scenario '0.1. Page displays name of player 2' do
    enter_game
    both_sign_in
    click_button('Player 2: Play game')
    expect(page).to have_content('Player 2: Clems')
  end
end
