feature 'shows moves of last game before result' do
  scenario 'when user has just played a game' do
    sign_in_and_play
    click_button("Rock")
    expect(page).to have_content "You picked rock"
  end
end
