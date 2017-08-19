
RSpec.feature "Home page", type: :feature do
  scenario "it says hello world" do
    visit "/"
    expect(page).to have_text("Hello, world!")
  end
end
