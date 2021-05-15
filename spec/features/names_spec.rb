feature 'Player enters name' do
  scenario 'Checks you can enter a name' do
    visit('/')
    fill_in :player_1, with: 'Felix'
    click_button 'Lets Play!'
    expect(page).to have_content 'Felix'
  end
end
