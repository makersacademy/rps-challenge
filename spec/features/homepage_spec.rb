feature "Homepage has a textbox for player's name" do
  scenario "Home page loads" do
    visit("/")
    expect(page).to have_content("name")
  end
end
