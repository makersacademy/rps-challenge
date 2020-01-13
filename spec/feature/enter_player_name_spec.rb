feature 'Enter Player name' do
  scenario 'Submit a name' do
    visit('/')
    fill_in :player_1_name, with: "Kittens"
    click_button 'Submit'
    expect(page).to have_content "It's Kittens Vs Computer"
  end
end
