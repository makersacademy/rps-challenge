feature 'Multiplayer game outcome' do
  scenario 'Player 1 wins' do
    multiplayer_sign_in
    click_button 'Rock'
    click_button 'Scissors'
    click_button 'Reveal Winner'
    click_button 'Reveal Winner'
    expect(page).to have_content 'Nathan won'
  end

  scenario 'Player 2 wins' do
    multiplayer_sign_in
    click_button 'Rock'
    click_button 'Paper'
    click_button 'Reveal Winner'
    click_button 'Reveal Winner'
    expect(page).to have_content 'Rachel won'
  end

  scenario 'confirms when it was a draw' do
    multiplayer_sign_in
    click_button 'Rock'
    click_button 'Rock'
    click_button 'Reveal Winner'
    click_button 'Reveal Winner'
    expect(page).to have_content 'its a tie, both players played Rock'
  end
end
