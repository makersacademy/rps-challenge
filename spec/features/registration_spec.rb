feature 'player can sign in with his name' do
  scenario 'display player\'s name' do
    visit('/')
    fill_in :player_name, with: 'Player1'
    click_button 'Submit'
    expect(page).to have_content('Player1')
  end
end
