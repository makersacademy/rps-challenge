feature 'Name entry' do
  scenario 'displays player name' do
    visit('/')
    fill_in :player_name, with: 'Bejlo'
    click_button 'Submit'
    expect(page).to have_content "You're up, Bejlo!"
  end
end
