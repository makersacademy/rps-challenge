feature 'Starting game' do
  scenario 'player can enter name' do
    visit('/')
    fill_in :player_name, with: "Kevin"
    click_button "Start Game"
    expect(page).to have_content "Welcome, Kevin!"
  end
end
