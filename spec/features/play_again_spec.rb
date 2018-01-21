feature 'Play again option on the result page' do
  scenario 'Redirect the player to play again' do
    visit('/')
    fill_in :player_name, with: "Tiana"
    click_button 'Let\'s Play!'
    expect(page).to have_content 'Tiana vs. Computer!'
    click_button 'Rock'
    expect(page).to have_content 'Tiana chose Rock!'
    click_button 'Let\'s Play Again!'
    expect(page).to have_content 'The Rock Paper Scissors Game!'
  end
end
