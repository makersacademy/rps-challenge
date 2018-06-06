feature "testing infrastructure set up works" do
  scenario "user visits homepage" do
    visit('/')
    expect(page).to have_content("Welcome to Mr Rosso's Rock Paper Scissors")
  end
end
