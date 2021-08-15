feature 'singleplayer page' do
  scenario 'checks the welcome message on the singleplayer page' do
    visit("/")
    click_button("Single Player")
    expect(page).to have_content("This is the page for single player")
  end
end
