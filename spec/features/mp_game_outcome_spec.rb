feature 'Multiplayer game outcome' do
  scenario 'Player 1 wins' do
    multiplayer_sign_in
    click_button 'Rock'
    click_button 'Scissors'
    reveal_winner
    expect(page).to have_content 'Nathan won'
  end

  scenario 'Player 2 wins' do
    multiplayer_sign_in
    click_button 'Rock'
    click_button 'Paper'
    reveal_winner
    expect(page).to have_content 'Rachel won'
  end

  scenario 'confirms when it was a draw' do
    multiplayer_sign_in
    click_button 'Rock'
    click_button 'Rock'
    reveal_winner
    expect(page).to have_content 'its a tie, both players played Rock'
  end
end
