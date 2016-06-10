feature "Entering a name" do
  scenario "user enters a name (single player)" do
    sign_in_and_start
    expect(page).to have_content("Welcome Van!")
  end
end
