feature 'enter player names' do
  scenario 'player enters their name' do
    visit('/')
    fill_in :player_name, with: 'Mark'
    click_button 'Submit'
    expect(page).to have_content 'Welcome Mark...'
  end
end
