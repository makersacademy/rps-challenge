feature "Sign in" do
  scenario "As a new user I would like to sign in" do
    visit('/')
    fill_in('username', with: "Andrew")
    click_button("Submit")
    expect(page).to have_content("Hello Andrew! Welcome to Rock, Paper, Scissors!")
  end
end
