feature 'Available moves' do
  scenario 'Player selects 1 of 3 moves' do
    start_game
    expect(page).to have_content "Telgi: Take your Pick..."
    expect(page).to have_content "Rock Paper Scissors"
    expect(page).to have_button "Ching-Up"
  end
end
