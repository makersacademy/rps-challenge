Capybara.app = Rps

feature 'At the start of the game' do
  scenario 'User can choose between single player or multiplayer' do
    visit('/')
    expect(page).to have_button('Single player?')
    expect(page).to have_button('Multiplayer?')
  end
end

feature 'Player vs Computer' do

  scenario 'User can enter their name before playing' do
    enter_name_and_begin_game
    expect(page).to have_content("Hi Dave")
  end

  scenario 'User can select rock, paper or scissors' do
    enter_name_and_begin_game
    expect(page).to have_button('Rock')
    expect(page).to have_button('Paper')
    expect(page).to have_button('Scissors')
  end

  scenario 'After player has made a move the game result is displayed' do
    enter_name_and_begin_game
    click_button('Rock')
    expect(page).to have_content('Dave you chose Rock')
  end

  scenario 'After a game you can play again' do
    enter_name_and_begin_game
    click_button('Rock')
    click_button('Play again?')
    expect(page).to have_content('Hi Dave let\'s play!')
  end

  scenario 'After a game you can restart' do
    enter_name_and_begin_game
    click_button('Rock')
    click_button('Restart?')
    expect(page).to have_content('Choose how you want to play')
  end

end
