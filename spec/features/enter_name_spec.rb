feature 'enter name' do

  scenario 'front page has a player1 name field' do
    visit '/'
    expect(page).to have_field "p1_name"
  end

  scenario 'front page has a player2 name field' do
    visit '/'
    expect(page).to have_field "p2_name"
  end

  scenario 'see player1 vs. player2 on next page' do
    start_the_game
    expect(page).to have_content "Dana vs. Matt"
  end

  scenario 'let user know to enter only 1 name for 1 player game' do
    visit '/'
    expect(page).to have_content "To play against the computer, only enter Player 1's name"
  end

  scenario 'play against computer if only player 1\'s name entered' do
    visit '/'
    fill_in :p1_name, with: 'Dana'
    click_button "Let's Play!"
    expect(page).to have_content "Dana vs. Computer"
  end
end
