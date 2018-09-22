feature "Welcome screen" do
  scenario "displayed when entering website" do
    visit "/"
    expect(page).to have_content("Welcome to Rock, Paper, Scissors")
  end
  
  scenario "submit button takes you to Name Input page" do
    visit "/"
    click_button "Enter"
    expect(page).to have_content("Enter your name:")
  end
end
