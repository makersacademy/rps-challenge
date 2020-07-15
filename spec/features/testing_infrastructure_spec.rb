feature "Testing infrastructure" do
  scenario "Home page contains text: 'welcome to RPS" do
    visit "/"
    expect(page).to have_text "Welcome to Rock, Paper, Scissors..."
  end
end
