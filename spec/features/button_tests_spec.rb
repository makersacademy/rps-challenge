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

feature 'RPS - Multiplayer' do
  scenario 'player 1 move page has a button called rock' do
    two_player_game
    expect(page).to have_button 'rock'
  end

  scenario 'player 1 move page has a button called paper' do
    two_player_game
    expect(page).to have_button 'paper'
  end

  scenario 'player 1 move page has a button called scissors' do
    two_player_game
    expect(page).to have_button 'scissors'
  end

  scenario 'player 2 move page has a button called rock' do
    two_player_game
    click_button 'rock'
    expect(page).to have_button 'rock'
  end

  scenario 'player 2 move page has a button called paper' do
    two_player_game
    click_button 'rock'
    expect(page).to have_button 'paper'
  end

  scenario 'player 2 move page has a button called scissors' do
    two_player_game
    click_button 'rock'
    expect(page).to have_button 'scissors'
  end
end
