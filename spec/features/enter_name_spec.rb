
RSpec.feature "Home page", type: :feature do
  scenario "it asks player to enter name" do
    visit "/"
    expect(page).to have_text("Enter your name and click play")
  end
end
