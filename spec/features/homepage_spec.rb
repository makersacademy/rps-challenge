# feature "Home page", type: :feature do
#   scenario "it says hello world" do
#     visit "/"
#     expect(page).to have_text("Hello, world!")
#   end
# end

feature "Home page", type: :feature do
  scenario "it has a form to enter a name" do
    visit "/"
    expect(page).to have_field("name")
  end
end
