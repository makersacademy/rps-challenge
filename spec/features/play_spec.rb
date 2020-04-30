feature '/play' do
  scenario 'shows player_1_name' do
    sign_in_and_play
    expect(page).to have_content TEST_PLAYER_1_NAME
  end
end
