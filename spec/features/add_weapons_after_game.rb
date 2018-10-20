feature 'start a new game' do
  scenario 'completed game and user presses link to start another' do
    sign_in_and_play_standard
    player_one_game
    click_link('Add Weapons')
    fill_in('weapon_1', :with => 'Fire')
    fill_in('weapon_2', :with => 'Ice')
    click_button('Add')
    expect(page).to have_content('Ice')
    expect(page).to have_content('Fire')
  end
end
