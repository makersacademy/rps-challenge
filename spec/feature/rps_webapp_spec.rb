require "capybara/rspec"

feature "Web app opens correctly:" do
  scenario "'/' Returns welcome text" do
    visit('/')
    expect(page).to have_content "Welcome to Rock, Paper, Scissors!"
  end

end

feature "Game can store user's name:" do
  scenario "User inputs name and sees it on next screen" do
    visit('/')
    fill_in "name", with: "Test Player"
    click_button "Submit"
    expect(page).to have_content "Test Player"
  end
end
