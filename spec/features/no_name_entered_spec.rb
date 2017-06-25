

feature "name is required" do
  scenario "user doesn't provide name" do
    visit('/')
    click_on("Submit")
    expect(page).to have_content("Um, you need to input a name!")
  end
end
