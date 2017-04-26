feature "Infrastructure" do
  scenario "route has content" do
    visit("/")
    expect(page).to have_content("Hello World!")
  end
end
