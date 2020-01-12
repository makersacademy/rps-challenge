feature 'End Screen' do
  scenario 'Result is shown' do
    sign_in_and_win
    expect(page).to have_content('Chris Wins!')
  end
  scenario 'Option to play again' do
    sign_in_and_win
    expect(page).to have_selector(:link_or_button, 'Play Again?')
  end
end
