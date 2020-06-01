feature 'result page multi player' do
  scenario 'displays player 1 move' do
    sign_in_and_play_moves
    expect(page).to have_content "STEVE PICKED ROCK"
  end

  scenario 'displays player 2 move' do
    sign_in_and_play_moves
    expect(page).to have_content "ALAN PICKED PAPER"
  end

  scenario 'displays the winning player' do
    sign_in_and_play_moves
    expect(page).to have_content "ALAN WON"
  end

  scenario 'states if there was a draw' do
    sign_in_and_play_multi
    click_button 'Rock'
    click_button 'Rock'
    expect(page).to have_content "IT'S A DRAW"
  end

  scenario 'has an option to return to play page' do
    sign_in_and_play_moves
    click_button 'Play Again'
    expect(page).to have_content 'STEVE, SELECT YOUR MOVE'
  end
end
