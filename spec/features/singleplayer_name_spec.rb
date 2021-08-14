feature 'single player name' do
  scenario 'checks that the game accepts a player name' do
    visit("/singleplayer")
    fill_in("Player1", with: "Super Hans")
    click_button("Submit")
    expect(page).to have_content("Welcome Super Hans! Please select your move!")
  end
end