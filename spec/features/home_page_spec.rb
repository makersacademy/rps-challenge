
RSpec.feature "Home page", type: :feature do
  scenario "it greets player" do
    visit "/"
    expect(page).to have_text("Welcome")
  end
  scenario "it asks player to enter name" do
    visit "/"
    expect(page).to have_text("Enter your name and click play")
  end
end
