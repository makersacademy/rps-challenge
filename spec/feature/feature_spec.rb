RSpec.feature "Home page", type: :feature do
  scenario "it says Welcome to Rock Paper Sissors" do
    visit "/"
    expect(page).to have_text("Welcome to Rock Paper Sissors")
  end
end
