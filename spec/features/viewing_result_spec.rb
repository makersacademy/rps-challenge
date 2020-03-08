feature 'Viewing Results' do

  scenario 'Player can see their move' do
    start_game
    click_button '👊🏼'
    expect(page).to have_content "Josie moved: 👊🏼"
  end
  scenario 'Player can see the other players move' do
    srand(3)
    start_game
    click_button '👊🏼'
    expect(page).to have_content "Computer moved: ✌🏼"
  end
  scenario 'Player can see who won' do
    srand(3)
    start_game
    click_button '👊🏼'
    expect(page).to have_content "Josie won this round!"
  end
  scenario 'Player can see if its a draw' do
    srand(2)
    start_game
    click_button '👊🏼'
    expect(page).to have_content "It's a draw!"
  end
  scenario 'Can press button to continue playing' do
    start_game
    click_button '👊🏼'
    expect(page).to have_content "Ok"
  end

end
