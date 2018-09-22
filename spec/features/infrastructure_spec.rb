feature 'homepage' do
  scenario 'the homepage contains the title Rock Paper Scissors' do
    visit '/'
    expect(page).to have_content 'Rock Paper Scissors'
  end

  scenario 'has a button called single player that takes you to a single player game' do
    visit '/'
    click_button 'Single Player'
    expect(page).to have_content "Rock Paper Scissors - Single Player"
  end

  scenario 'has a button called two player that takes you to two player game' do
    visit '/'
    click_button 'Two Player'
    expect(page).to have_content "Rock Paper Scissors - Two Player"
  end
end

feature 'singleplayer' do
  scenario 'lets you enter your name into the single player game' do
    single_player_name
    expect(page).to have_content 'Welcome Dwayne Johnson, Please enter your move:'
  end
end

feature 'twoplayer' do
  scenario 'lets you enter 2 names into the two player game and takes you to player1s go' do
    visit '/'
    click_button 'Two Player'
    fill_in 'name1', with: 'Bugs Bunny'
    fill_in 'name2', with: 'Daffy Duck'
    click_button 'Submit'
    expect(page).to have_content "Bugs Bunny it is your turn, please enter your move (don't let Daffy Duck see!)"
  end

  scenario 'after entering players 1s move, goes to the page for player 2 to enter a move' do
    visit '/'
    click_button 'Two Player'
    fill_in 'name1', with: 'Bugs Bunny'
    fill_in 'name2', with: 'Daffy Duck'
    click_button 'Submit'
    click_button 'rock'
    expect(page).to have_content "Daffy Duck, it's now your turn"
  end

  scenario 'after both players enter their moves it goes to a results page' do
    visit '/'
    click_button 'Two Player'
    fill_in 'name1', with: 'Bugs Bunny'
    fill_in 'name2', with: 'Daffy Duck'
    click_button 'Submit'
    click_button 'rock'
    click_button 'paper'
    expect(page).to have_content 'Game over:'
  end
end

feature 'RPS - singleplayer' do
  scenario 'has a button called rock' do
    single_player_name
    expect(page).to have_button 'rock'
  end

  scenario 'has a button called paper' do
    single_player_name
    expect(page).to have_button 'paper'
  end

  scenario 'has a button called scissors' do
    single_player_name
    expect(page).to have_button 'scissors'
  end
end

feature 'Result' do
  scenario 'making a scissors move takes you to results page' do
    single_player_name
    click_button 'scissors'
    expect(page).to have_content 'Game over:'
  end

  scenario 'making a rock move takes you to results page' do
    single_player_name
    click_button 'rock'
    expect(page).to have_content 'Game over:'
  end

  scenario 'making a paper move takes you to results page' do
    single_player_name
    click_button 'paper'
    expect(page).to have_content 'Game over:'
  end

  scenario 'has a play again? button that takes you back to another game' do
    single_player_name
    click_button 'paper'
    click_button 'play_again'
    expect(page).to have_content 'Welcome Dwayne Johnson, Please enter your move:'
    expect(page).to have_button 'rock'
    expect(page).to have_button 'scissors'
    expect(page).to have_button 'paper'
  end
end
