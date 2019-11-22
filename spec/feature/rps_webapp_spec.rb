require "capybara/rspec"

feature "Web app opens correctly:" do
  scenario "'/' Returns welcome text" do
    visit('/')
    expect(page).to have_content "Hello World"
  end

end

feature "Game can store user's name:" do
  scenario "User inputs name and sees it on next screen" do
    visit('/')
    Fill_in "name", with: "Test Player"
    click_button "submit"
    expect(page).to have_content "Test PLayer"

  end
end
