feature 'Player enters their name' do
  scenario 'Submitting a name' do
    visit('/')
    fill_in :player_1, with: 'David'
    click_button 'Submit'
    expect(page).to have_content 'David vs The Great Cthulhu'
  end
end
