require_relative '../../app.rb'

feature 'playing two player game' do

  scenario 'gives second player message to choose weapon' do
    two_player_game_first_player_chooses_rock
    expect(page).to_not have_content('Choose your weapon, Ed')
    expect(page).to have_content('Choose your weapon, Prune')
  end

  scenario 'allows second player to win a game' do
    two_player_game_first_player_chooses_rock
    choose 'Paper'
    click_button('Confirm Choice')
    expect(page).to have_content('Ed loses, Prune wins!')
  end

  scenario 'allows two player game to be drawn' do
    two_player_game_drawn
    expect(page).to have_content("It's a draw!")
  end

  scenario 'allows second player to lose a game' do
    two_player_game_first_player_chooses_rock
    choose 'Scissors'
    click_button('Confirm Choice')
    expect(page).to have_content('Ed wins, Prune loses!')
  end

  scenario 'allows two players to play again' do
    two_player_game_drawn
    click_button('Play Again')
    expect(page).to have_content('Choose your weapon, Ed')
    expect(page).to_not have_content("It's a draw!")
  end

end
