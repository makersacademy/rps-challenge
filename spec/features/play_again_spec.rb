feature 'can play again' do
  scenario 'user can navigate back to the play page after each game' do
    sign_in
    click_link "Rock"
    click_link "Play Again"
    expect(page).to have_content "Dave vs. Computer"
  end
end