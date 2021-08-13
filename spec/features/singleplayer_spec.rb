feature 'multiplayer page' do
  scenario 'checks the welcome message on the multilplayer page' do
    visit("/")
    click_button("Single Player")
    expect(page).to have_content("This is the page for single player")
  end
end
