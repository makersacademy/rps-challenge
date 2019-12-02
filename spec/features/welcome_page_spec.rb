feature "welcome page" do
  scenario "show welcome page" do
    visit '/'
    expect(page).to have_content "Welcome to the game of rock paper, scissors"
  end
end
