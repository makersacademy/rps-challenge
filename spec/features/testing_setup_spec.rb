feature "Testing landing page" do
  scenario "Can run app and check home page content" do
    visit("/")
    expect(page).to have_content "ROCK PAPER SCISSORS"
    expect(page).to have_content "Enter your name to play"
  end
end
