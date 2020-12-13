feature 'play another game' do
  scenario 'allows same player to play again' do
    play_again
    expect(page).to have_text("It's time to du-du-du-du-dueellllllll")
    expect(page).to have_text("CATHAL VERSUS PSYDUCK")
  end
end
