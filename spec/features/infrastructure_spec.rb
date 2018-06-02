feature "testing infrastructure set up works" do
  scenario "user visits homepage" do
    visit('/')
    expect(page).to have_content("Welcome to Rock Paper Scissors")
  end
end
