feature 'Entering names' do
  scenario "players can enter their names" do
    visit('/')
    fill_in :player_name, with: 'Lan'
    click_button 'Submit'
    expect(page).to have_content 'Lan vs. Computer'
  end
end
