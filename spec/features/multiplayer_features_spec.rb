Capybara.app = Rps

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
