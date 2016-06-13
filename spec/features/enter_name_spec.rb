feature "Entering a name" do
  scenario "User can enter and submit a name" do
    sign_in_and_start
    expect(page).to have_content("Welcome Van!")
  end
end
