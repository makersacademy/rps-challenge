feature 'Enter player name' do
  scenario 'player enters name' do
    visit('/')
    fill_in :player_name, with: 'Luke'
    click_button 'Click to Begin!'
    expect(page).to have_content('Luke VS Mac!')
  end

end