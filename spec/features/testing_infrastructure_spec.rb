feature "check homepage text" do
  scenario "asks to enter your name" do
    visit('/')
    expect(page).to have_content("Please enter your name")
  end
end
