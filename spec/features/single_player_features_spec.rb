Capybara.app = Rps

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
