feature 'Player name' do
  scenario 'player 1 has a name' do
    name_and_play
    expect(page).to have_content "George vs Computer"
  end
end
