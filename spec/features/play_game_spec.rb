feature 'Playing the game' do
  scenario 'player signs in and chooses rock' do
    visit('/')
    fill_in :player_name, with: "Richard"
    click_button 'Submit'
    click_button 'Rock'
    expect(page).to have_content("You have chosen Rock")
  end
end
