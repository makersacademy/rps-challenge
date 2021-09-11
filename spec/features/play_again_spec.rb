feature 'Play gain' do
  scenario 'User enters a name, lands on the play page, chooses an option, sees the result, clicks on play again and lands on the play page' do
    enter_name
    click_button 'Rock'
    click_link 'Play again'
    expect(page).to have_content 'Hello Sophie. Ready to play?'
    expect(page).to have_button 'Rock'
    expect(page).to have_button 'Paper'
    expect(page).to have_button 'Scissors'
  end
end
