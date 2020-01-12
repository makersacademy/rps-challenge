feature 'Registers name' do
  scenario 'Can register name' do
    visit('/')
    fill_in :player_name, with: 'Player 1'
    click_button 'Submit'
    expect(page).to have_content "It's your turn, Player 1"
  end
end
