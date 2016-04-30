feature 'Registering Names' do
  let (:player_name) { random_string }
  scenario 'Player 1 enters name' do
    visit('/')
    fill_in :player_name, with: player_name
    click_button 'Submit'
    expect(page).to have_content "Welcome #{player_name}"
  end
end