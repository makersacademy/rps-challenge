feature 'Enter player name' do

  scenario 'player enters name' do
    visit('/')
    fill_in :player_name, with: 'Jay'
    click_button 'Submit'
    expect(page).to have_content 'Jay vs Computer'
  end

end
