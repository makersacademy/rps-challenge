feature 'Enter name' do
  scenario 'registers the player name' do
    visit('/')
    fill_in :player_1_name, with: 'Sheldon'
    click_button('Submit')
    expect(page).to have_content 'Sheldon vs. Computer'
  end
end
