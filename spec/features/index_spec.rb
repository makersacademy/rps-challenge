feature '/' do
  scenario 'displays the welcome message' do
    visit '/'
    expect(page).to have_content 'Welcome to Rock Paper Scissors'
  end
  scenario 'allows a single player to enter their name' do
    enter_name_and_play
    expect(page).to have_content 'playerX vs. Computer'
    expect(page).to have_content 'Let\'s play, playerX goes first!'
  end
  scenario 'allows two players to enter their names' do
    enter_two_names_and_play
    expect(page).to have_content 'playerX1 vs. playerX2'
    expect(page).to have_content 'Let\'s play, playerX1 goes first!'
  end
end
