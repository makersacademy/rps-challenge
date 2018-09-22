
feature 'homepage' do
  scenario 'the homepage contains the title Rock Paper Scissors' do
    visit '/'
    expect(page).to have_content 'Rock Paper Scissors'
  end

  scenario 'has a button called single player that takes you to a single player game' do
    visit '/'
    click_button 'singleplayer'
    expect(page).to have_content "Rock Paper Scissors - Single Player"
  end
end

feature 'singleplayer' do
  scenario 'lets you enter your name into the single player game' do
    single_player_name
    expect(page).to have_content 'Welcome Dwayne Johnson, Please enter your move:'
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
    expect(page).to have_content 'Game over: you have'
  end

  scenario 'making a rock move takes you to results page' do
    single_player_name
    click_button 'rock'
    expect(page).to have_content 'Game over: you have'
  end

  scenario 'making a paper move takes you to results page' do
    single_player_name
    click_button 'paper'
    expect(page).to have_content 'Game over: you have'
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
