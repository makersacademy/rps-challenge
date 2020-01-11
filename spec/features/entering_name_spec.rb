feature "entering name" do
  scenario "it allows the player to enter their name" do
    enter_name
    expect(page).to have_content "Welcome, Asia, please select your move:"
  end
end