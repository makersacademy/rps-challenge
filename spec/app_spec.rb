feature 'gets the names' do
  scenario 'get player names' do
    visit('/')
    fill_in :player_name, with: 'Max'
    click_button 'submit player name'
    expect(page).to have_content 'Hello Max!'
  end
end
