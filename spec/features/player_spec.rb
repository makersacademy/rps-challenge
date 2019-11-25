feature 'enter name' do
  scenario 'player enters name to start game' do
    register_and_play
    expect(page).to have_content 'player_name vs Bert'
  end
end
