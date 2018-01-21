feature 'Input/Store player name' do
  scenario 'returns player name' do
    visit('/')
    fill_in :player_name, with: 'Simon'
    click_button 'Submit'
    expect(page).to have_content 'Simon'
  end
end
