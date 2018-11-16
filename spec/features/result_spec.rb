feature 'Result page' do

  scenario 'expect to have option to play again' do
    start_the_game
    click_button 'Rock'
    expect(page).to have_button('Play Again')
  end

  scenario 'expect to have option to start a new game' do
    start_the_game
    click_button 'Rock'
    expect(page).to have_button('New Game')
  end
end
