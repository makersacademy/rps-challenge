Capybara.app = Rps

feature 'At the start of the game' do

  scenario 'User can enter their name before playing' do
    enter_name_and_begin_game
    expect(page).to have_content("Hi Dave")
  end

end

feature 'Player vs Computer' do

  scenario 'User can select rock, paper or scissors' do
    enter_name_and_begin_game
    expect(page).to have_button('Rock')
    expect(page).to have_button('Paper')
    expect(page).to have_button('Scissors')
  end

  scenario 'After player has made a move the game result is displayed' do
    enter_name_and_begin_game
    click_button('Rock')
  end

end
