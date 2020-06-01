feature 'result page single player' do
  scenario 'displays players move' do
    sign_in_and_pick_rock
    expect(page).to have_content "YOU PICKED ROCK"
  end

  scenario 'states if player has won' do
    srand(4)
    sign_in_and_pick_rock
    expect(page).to have_content "YOU WON"
  end

  scenario 'states if player has lost' do
    srand(10)
    sign_in_and_pick_rock
    expect(page).to have_content "YOU LOST"
  end

  scenario 'states if there was a draw' do
    srand(8)
    sign_in_and_pick_rock
    expect(page).to have_content "IT'S A DRAW"
  end

  scenario 'has an option to return to play page' do
    sign_in_and_pick_rock
    click_button 'Play Again'
    expect(page).to have_content 'STEVE, SELECT YOUR MOVE'
  end
end
