feature "Testing infrastructure" do
  scenario "Can run the app and check page content" do
    visit("/")
    expect(page).to have_content "Please enter your name to play."
  end
end