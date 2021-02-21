feature 'Enter player name' do
  scenario 'Submits players name' do
    visit('/')
    fill_in :player_name, with: 'Dave'
    click_button 'Submit'
    expect(page).to have_content 'Dave'
  end
end
