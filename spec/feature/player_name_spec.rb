feature 'Input/Store player name' do
  scenario 'returns player name' do
    visit('/')
    fill_in :player_name, with: 'John'
    click_button 'Submit'
    expect(page).to have_content 'John!'
  end
end
