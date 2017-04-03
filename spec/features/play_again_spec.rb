feature 'Play Again' do
  scenario 'Allows user to play again' do
    sign_in_and_play
    click_button 'Battle'
    click_button 'PlayAgain'
    expect(page).to have_content 'Dave vs. Deep Blue'
  end
end
