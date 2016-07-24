feature 'Play again' do
  scenario 'After a round of RPS, you want to play again' do
    sign_in_and_play
    rock_choice
    click_button('View')
    click_button('Play again')
    expect(page).to have_content('Choose one of the following weapons')
  end
end
