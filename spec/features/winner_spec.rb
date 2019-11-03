feature 'Winner is selected' do
  scenario 'after player 1 selects a move the outcome is decided' do
    sign_in_and_play
    click_button("Lets GO!")
    expect(page).to have_content("wins")
  end
end
