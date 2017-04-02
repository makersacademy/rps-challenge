feature "something" do
  scenario "something" do
    visit('/')
    expect(page).to have_content "Hello"
  end
end
