feature 'rps game - solo mode' do
  scenario 'enter player name' do
    visit('/one_player')
    expect(page).to have_content('Welcome to rock, paper, scissors!')
    fill_in('player_1_name', with: 'Sandy')
    click_button('Submit')
  end
end
