feature 'gets the names' do
  scenario 'get player names' do
    sign_in_and_play
    expect(page).to have_content 'Hello Max!'
  end
end

feature 'testing move selection' do
  scenario 'player1 chooses rock' do
    sign_in_and_play
    fill_in :player_move, with: 'rock'
    click_button 'Submit Move'
    expect(page).to have_content 'Max chose rock!'
  end
  scenario 'player1 chooses paper' do
    sign_in_and_play
    fill_in :player_move, with: 'paper'
    click_button 'Submit Move'
    expect(page).to have_content 'Max chose paper!'
  end
  scenario 'player1 chooses scissors' do
    sign_in_and_play
    fill_in :player_move, with: 'scissors'
    click_button 'Submit Move'
    expect(page).to have_content 'Max chose scissors!'
  end
end

feature 'testing bot or multiplayer functionality names' do
  scenario 'playing versus a bot' do
    sign_in_and_play
    expect(page).to have_content 'RPSBot3000'
  end
  scenario 'playing versus another player' do
    sign_in_and_play_multiplayer
  end
end

feature 'testing multiplayer move selection' do
  scenario 'player2 chooses rock' do
    sign_in_and_play_multiplayer
    both_choose_rock
    expect(page).to have_content 'Charlotte chose rock'
  end
  scenario 'player2 chooses paper' do
    sign_in_and_play_multiplayer
    both_choose_paper
    expect(page).to have_content 'Charlotte chose paper'
  end
  scenario 'player2 chooses scissors' do
    sign_in_and_play_multiplayer
    both_choose_scissors
    expect(page).to have_content 'Charlotte chose scissors'
  end
end

feature 'testing match outcomes' do
  scenario 'player 1 chooses rock and player 2 chooses scissors' do
    sign_in_and_play_multiplayer
    rock_and_scissors
    expect(page).to have_content 'You Win!'
  end
  scenario 'player 1 chooses rock and player 2 chooses paper' do
    sign_in_and_play_multiplayer
    rock_and_paper
    expect(page).to have_content 'You Lose!'
  end
  scenario 'player 1 chooses rock and player 2 chooses rock' do
    sign_in_and_play_multiplayer
    both_choose_rock
    expect(page).to have_content 'Draw!'
  end
  scenario 'player 1 chooses paper and player 2 chooses rock' do
    sign_in_and_play_multiplayer
    paper_and_rock
    expect(page).to have_content 'You Win!'
  end
  scenario 'player 1 chooses paper and player 2 chooses scissors' do
    sign_in_and_play_multiplayer
    paper_and_scissors
    expect(page).to have_content 'You Lose!'
  end
  scenario 'player 1 chooses paper and player 2 chooses paper' do
    sign_in_and_play_multiplayer
    both_choose_paper
    expect(page).to have_content 'Draw!'
  end
  scenario 'player 1 chooses scissors and player 2 chooses rock' do
    sign_in_and_play_multiplayer
    scissors_and_rock
    expect(page).to have_content 'You Lose!'
  end
  scenario 'player 1 chooses scissors and player 2 chooses paper' do
    sign_in_and_play_multiplayer
    scissors_and_paper
    expect(page).to have_content 'You Win!'
  end
  scenario 'player 1 chooses scissors and player 2 chooses scissors' do
    sign_in_and_play_multiplayer
    both_choose_scissors
    expect(page).to have_content 'Draw!'
  end
end
