Capybara.app = Rps

feature 'At the start of the game' do
  scenario 'User can choose between single player or multiplayer' do
    visit('/')
    expect(page).to have_button('single_player')
    expect(page).to have_button('multiplayer')
  end
end

feature 'Single Player' do
  scenario 'User can enter their name before playing' do
    visit('/')
    click_button "single_player"
    expect(page).to have_content("What's your name")
  end

  scenario 'User can select Bulbasaur, Squritle or Charmander' do
    begin_single_player_game
    expect(page).to have_button('grass')
    expect(page).to have_button('water')
    expect(page).to have_button('fire')
  end

  scenario 'After player has made a move the game result is displayed' do
    begin_single_player_game
    srand(0)
    click_button('grass')
    expect(page).to have_content('Dave chose Bulbasaur')
    expect(page).to have_content('It was not very effective...')
  end

  scenario 'After a game you can play again' do
    begin_single_player_game
    click_button('grass')
    click_button('Play again?')
    expect(page).to have_content('Dave, choose your Pokemon')
  end

  scenario 'After a game you can restart' do
    begin_single_player_game
    click_button('grass')
    click_button('Restart?')
    expect(page).to have_content('Battle alone or with friends')
  end
end

feature 'Multiplayer' do
  scenario 'Both users can enter their names' do
    visit('/')
    click_button "multiplayer"
    expect(page).to have_content("What're your names?")
  end

  scenario 'First user can play' do
    begin_multiplayer_game
    expect(page).to have_content('Dave, choose your Pokemon')
  end

  scenario 'After first player has made a move the second player can make move' do
    begin_multiplayer_game
    click_button('grass')
    expect(page).to have_content('Ben, choose your Pokemon')
  end

  scenario 'After both players have made their move the result is shown' do
    begin_multiplayer_game
    click_button('grass')
    click_button('fire')
    expect(page).to have_content('Ben used a super effective move!')
  end

  scenario 'After the game the players can choose to play again' do
    begin_multiplayer_game
    click_button('grass')
    click_button('fire')
    expect(page).to have_button('Play again?')
    expect(page).to have_button('Restart?')
  end
end
