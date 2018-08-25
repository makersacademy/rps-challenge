feature "player can enter a name" do
  scenario "player lands on homepage and can enter their name" do
    visit("/")
    expect(page).to have_content("Enter name to play")
  end
end