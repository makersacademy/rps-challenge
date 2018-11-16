feature "User's name is stored" do
  scenario "the name entered is displayed back to the user" do
    sign_in
    expect(page).to have_content "Jo Brown is playing Rock, Paper, Scissors"
  end
end
