
feature 'A player can start a game' do
  scenario 'A player can enter their name to start a game' do
    start_game
    expect(page).to have_content("Lewis vs. Frank")
  end
end

feature 'Choosing a move' do
  scenario 'Player1 can select a move that is then displayed' do
    start_game
    select('Rock', :from => 'player1_move')
    click_button('Submit')
    expect(page).to have_content "Lewis chose: Rock"
  end

  scenario 'Player 2 can select a move that is then displayed' do
    start_game
    select('Rock', :from => 'player2_move')
    click_button('Submit')
    expect(page).to have_content "Frank chose: Rock"
  end
end

feature 'Game results displayed on page' do
  scenario 'Players both choose Rock' do
    start_game
    select('Rock', :from => 'player1_move')
    select('Rock', :from => 'player2_move')
    click_button('Submit')
    expect(page).to have_content "It's a draw!"
  end

  scenario 'Players both choose Paper' do
    start_game
    select('Paper', :from => 'player1_move')
    select('Paper', :from => 'player2_move')
    click_button('Submit')
    expect(page).to have_content "It's a draw!"
  end

  scenario 'Players both choose Scissors' do
    start_game
    select('Scissors', :from => 'player1_move')
    select('Scissors', :from => 'player2_move')
    click_button('Submit')
    expect(page).to have_content "It's a draw!"
  end

  scenario 'Player 1 choose rock, player 2 chooses paper' do
    start_game
    select 'Rock', from: 'player1_move'
    select 'Paper', from: 'player2_move'
    click_button 'Submit'
    expect(page).to have_content ("Frank wins!")
  end

  scenario 'Player 1 chooses rock, player 2 chooses scissors' do
    start_game
    select 'Rock', from: 'player1_move'
    select 'Scissors', from: 'player2_move'
    click_button 'Submit'
    expect(page).to have_text("Lewis wins!")
  end

  scenario 'Player 1 chooses Scissors, player 2 chooses Paper' do
    start_game
    select 'Scissors', from: 'player1_move'
    select 'Paper', from: 'player2_move'
    click_button 'Submit'
    expect(page).to have_text("Lewis wins!")
  end
end
