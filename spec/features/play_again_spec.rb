feature 'Play Again' do
  scenario 'reroutes user to play again' do
    name_entered
    click_button 'Rock'
    click_button 'Play Again?'
    expect(page).to have_content('Luke VS Mac!')
  end
end
