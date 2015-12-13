feature 'Game mechanics' do

  before do
    allow($game).to receive(:rand_weapon) { 'Rock' }
  end

  # As a user
  # So that I can play my turn
  # I need to be able to choose one option between paper/scissors/rock

  scenario 'Player1 can pick rock/scissors/paper before each turn' do
    sign_in_and_play
    click_button('Next turn')
    click_button('Paper')
    expect(page).to have_content('John picked: Paper')
  end

  # As a user
  # So that I can play against the computer
  # I need to be able to see the choice the computer has made

  scenario 'Computer can pick rock/scissors/paper before each turn' do
    sign_in_and_play
    click_button('Next turn')
    click_button('Paper')
    expect(page).to have_content('Computer picked: Rock')
  end

  # As a user
  # So that I can see who won the turn
  # I need to see a confirmation of who won the turn

  scenario 'Winning message is displayed when player1 wins' do
    sign_in_and_play
    click_button('Next turn')
    click_button('Paper')
    expect(page).to have_content('You won!')
  end

  scenario 'Lose message is displayed when player1 loses' do
    sign_in_and_play
    click_button('Next turn')
    click_button('Scissors')
    expect(page).to have_content('You lost!')
  end

  scenario 'Tie message is displayed when turn is tie' do
    sign_in_and_play
    click_button('Next turn')
    click_button('Rock')
    expect(page).to have_content('No winners!')
  end

  # As a user
  # So that I can see who is more likely to win
  # I need to see a summary of the winner for each turn

  scenario 'If player 1 wins the score jumps up of 1' do
    sign_in_and_play
    click_button('Next turn')
    click_button('Paper')
    expect(page).to have_content('Won 1 / 3')
  end


end
