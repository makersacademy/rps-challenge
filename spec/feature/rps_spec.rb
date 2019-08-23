feature 'Rps' do
  scenario 'Player can register name before playing the game' do
    visit('/')
    fill_in('player_1', with: 'John')
    click_button('Start')
    expect(page).to have_content("John vs. Computer")
  end
end
