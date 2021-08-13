feature 'single player name' do
  scenario 'checks that the game accepts a player name' do
    visit("/")
    click_button("Single Player")
    fill_in("Player1", with: "Super Hans")
    click_button("Let's go!")
    expect(page).to have_content("Welcome Super Hans! Please select your move!")
  end
end