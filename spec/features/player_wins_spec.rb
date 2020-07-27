feature 'player can draw' do
  scenario 'players draw' do
    sign_in_multiplayer
    click_button 'Rock'
    click_button 'Rock'
    expect(page).to have_content 'Draw'
  end
end

feature 'player can win' do
  scenario 'player wins' do
    sign_in_multiplayer
    click_button 'Rock'
    click_button 'Paper'
    expect(page).to have_content 'Player 2 wins'
  end
end
