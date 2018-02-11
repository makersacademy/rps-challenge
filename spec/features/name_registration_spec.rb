feature "Name registration" do
  scenario "The player can register their name" do
    register_name
    expect(page).to have_content("Welcome, Serena\n Please select an option")
  end
end
