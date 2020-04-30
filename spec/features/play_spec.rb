feature '/play' do
  scenario 'shows player_1_name' do
    play
    expect(page).to have_content TEST_PLAYER_1_NAME
  end
end
