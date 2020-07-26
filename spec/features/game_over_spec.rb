feature 'game over screen' do
  scenario 'displays move of player 1' do
    srand(67809)
    enter_name
    click_button 'Rock'
    expect(page).to have_content('Haz used Rock')
  end
  scenario 'displays tie game if the game is tied' do
    srand(67809)
    enter_name
    click_button 'Scissors'
    expect(page).to have_content('The battle is tied!')
  end
  scenario 'takes you back to the beginning after the game' do
    srand(67809)
    enter_name
    click_button 'Scissors'
    click_button 'Rematch'
    expect(page).to have_content('Haz vs. John Cena')
  end
end
    