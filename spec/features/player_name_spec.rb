feature "Player's name" do
  scenario 'it lets the player register their name' do
    visit('/')
    fill_in :player_name, with: 'Chris'
    click_button 'Submit'
    expect(page).to have_content 'Chris'
  end
end
