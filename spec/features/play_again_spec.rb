feature 'play again' do
  scenario 'player can play again if play again button hit' do
    register_to_play
    click_button 'Start Game'
    click_button 'Rock'
    click_button 'Play again?'
    expect(page).to have_content "Player Name"
  end
end
