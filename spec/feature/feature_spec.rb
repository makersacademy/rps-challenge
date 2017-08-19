feature "Home page", type: :feature do
  scenario "Enter your name" do
    visit "/"
    expect(page).to have_text("Enter your name")
  end
end
