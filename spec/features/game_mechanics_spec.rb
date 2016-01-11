# before do
#   $game.play_turn(weapon2: 'Rock')
# end

feature 'Game mechanics' do

  # As a user
  # So that I can play my turn
  # I need to be able to choose one option between paper/scissors/rock

  xscenario 'Player1 can pick rock/scissors/paper before each turn' do
    sign_in
    play_paper
    expect(page).to have_content('Paper')
  end

  # As a user
  # So that I can play against the computer
  # I need to be able to see the choice the computer has made

  xscenario 'Computer can pick rock/scissors/paper before each turn' do
    sign_in
    play_paper
    expect(page).to have_content('Rock')
  end

  # As a user
  # So that I can see who won the turn
  # I need to see a confirmation of who won the turn

  scenario 'Winning message is displayed when player1 wins' do
    sign_in
    play_paper
    expect(page).to have_content('You won!')
  end

  scenario 'Lose message is displayed when player1 loses' do
    sign_in
    play_scissors
    expect(page).to have_content('You lost!')
  end

  scenario 'Tie message is displayed when turn is tie' do
    sign_in
    play_rock
    expect(page).to have_content('No winners!')
  end

  # As a user
  # So that I can see who is more likely to win
  # I need to see a summary of the winner for each turn

  scenario 'If player 1 wins the score jumps up of 1' do
    sign_in
    play_paper
    expect(page).to have_content('1/3')
  end

  # As a user
  # So that I can see I am the winner
  # I need to see a confirmation that I won the game

  scenario 'If player 1 score reaches 3, win screen' do
    sign_in
    play_paper
    2.times { play_paper_after_first_turn }
    expect(page).to have_content('Congratulations! You won against Computer')
  end

  # As a user
  # So that I can see I am the loser
  # I need to see a confirmation that I lost the game

  scenario 'If player 2 score reaches 3, loose screen' do
    sign_in
    play_scissors
    2.times { play_scissors_after_first_turn }
    expect(page).to have_content('Oh no! You lost against Computer')
  end

end
