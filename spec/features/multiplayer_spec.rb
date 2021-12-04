feature 'multiplayer page' do
  scenario 'checks the multiplayer page can be accessed' do
    visit("/")
    click_button("Multiplayer")
    expect(page).to have_content("This is the page for multiplayer")
  end
end
