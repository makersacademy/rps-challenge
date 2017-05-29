feature 'Enter player name' do
  scenario 'submit player name' do
    visit('/')
    fill_in :player_1_name, with: 'Andrew'
    click_button 'Submit'
    expect(page).to have_content 'Prepare for hand-to-hand combat Andrew!'
  end
end
