feature 'Player name' do
  scenario 'player 1 has a name' do
    visit '/'
    fill_in :player1, with: "George"
    click_button "Start Game"
    expect(page).to have_content "George vs Computer"
  end
end
