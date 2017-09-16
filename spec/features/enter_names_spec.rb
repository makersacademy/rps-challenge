feature 'player enters name' do
  scenario 'submit name' do
    visit('/')
    fill_in :player_name, with: "Player"
    click_button 'Submit'
  end
end
