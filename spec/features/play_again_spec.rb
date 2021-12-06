feature 'play again' do
  scenario 'returns you the play page' do
    sign_in_and_play
    select_rock_and_submit
    click_button "Play again"
    expect(page).to have_content("Welcome kenny to a game of Rock, Paper, Sissors")
  end
end
