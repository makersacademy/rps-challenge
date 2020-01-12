feature "welcome and sign in" do
  scenario "be prompted to sign in as you visit the home page" do
    visit '/'
    expect(page).to have_content('Please enter your name')
  end

end