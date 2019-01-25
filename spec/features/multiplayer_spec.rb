feature 'Multiplayer' do
  scenario 'game started with 2 players' do
    load_and_play_two_player
    expect(page).to have_content "James"
  end
end
