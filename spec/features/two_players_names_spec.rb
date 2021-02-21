feature 'rps game - two players mode' do
  scenario 'enter players name' do
    visit('/')
    click_button('two_players')
    visit('/two_players')
    expect(page).to have_content('Welcome to rock, paper, scissors!')
    fill_in('player_1_name', with: 'Sandy')
    fill_in('player_2_name', with: 'Hannah')
    click_button('Submit')
  end
end
