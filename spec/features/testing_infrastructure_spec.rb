feature "check homepage tesxt" do
  scenario "asks to enter your name" do
    visit('/')
    expect(page).to have_content("What's your name?")
  end
end