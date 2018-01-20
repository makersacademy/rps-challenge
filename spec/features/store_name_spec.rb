
feature "stores your name" do
  scenario "after signing in, you should see your name as player" do
    visit "/"
    fill_in "Enter name", with: "Derek"
    click_button "Begin..."
    expect(page).not_to have_content("AABBYkjahskdh987289")
    expect(page).to have_content("Welcome to the game, Derek")
  end

end
