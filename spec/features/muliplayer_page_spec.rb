feature 'multiplayer_page' do

  scenario 'player 1 and player 2 sign in and enter name and are then taken to play page' do
    DEFAULT_PLAYER_1_NAME = 'Xenith'
    DEFAULT_PLAYER_2_NAME = 'Quasar'

    visit('/multiplayer_names')
    fill_in('player_1_name', :with => DEFAULT_PLAYER_1_NAME)
    fill_in('player_2_name', :with => DEFAULT_PLAYER_2_NAME)
    click_button('Play')
    expect(page).to have_content('Multiplayer')
    expect(page).to have_content "#{DEFAULT_PLAYER_1_NAME}"
    expect(page).to have_content "#{DEFAULT_PLAYER_2_NAME}"
  end

end
