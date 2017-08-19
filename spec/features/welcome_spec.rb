
RSpec.feature "Home page", type: :feature do
  scenario "it greets player" do
    visit "/"
    expect(page).to have_text("Welcome")
  end
end
