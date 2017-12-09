feature "Sign up" do
  scenario "To see the homepage" do
    visit("/")
    expect(page).to have_content("Welcome to Rock, Paper and Scissors")
    expect(page).to have_content("To sign up, please enter your name")
  end

  scenario "Sign up and play" do
    sign_in
    expect(page).to have_content("Welcome Xin")
  end

end
