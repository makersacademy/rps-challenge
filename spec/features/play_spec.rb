feature 'Play page: upon entry completion' do

  scenario '0.0. Page displays name of player 1' do
    enter_game
    sign_in_and_play
    expect(page).to have_content('Player 1: Misa')
  end

  scenario '0.1. Page displays name of player 2' do
    enter_game
    sign_in_and_play
    expect(page).to have_content('Player 2: Clems')
  end
end
