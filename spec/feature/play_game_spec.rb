feature 'Start Game' do
  scenario 'Submit a name and start the game' do
    visit('/')
    fill_in :player_1_name, with: "Kittens"
    click_button 'Submit'
    click_button 'Start Game'
    expect(page).to have_content "Please choose a move"
  end
end