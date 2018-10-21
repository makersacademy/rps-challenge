feature 'Feature - Register name - single player' do
  scenario 'submit name, return name' do
    register_for_singleplayer_and_play
    expect(page).to have_content "Adam, it's your turn"
  end

  scenario 'forget name, return Player 1' do
    register_for_singleplayer_with_no_name_and_play
    expect(page).to have_content "Player 1, it's your turn"
  end
end

feature 'Feature - Register name - multiplayer' do
  scenario 'submit name, return both names' do
    register_for_multiplayer_and_play
    click_button 'Rock'
    expect(page).to have_content "Billy, it's your turn"
  end
end
