feature 'rematch' do
  scenario 'allows the user to play again' do
    play_full_game
    click_button 'Rematch'
    expect(page).to have_button('Rock')
    expect(page).to have_button('Paper')
    expect(page).to have_button('Scissors')
  end
end
