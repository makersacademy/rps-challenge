feature 'game result' do
  scenario 'users can see the result of the game' do
    sign_in_and_play
    srand(1)
    click_button("Rock")
    expect(page).to have_text "You lose!"
  end
end
