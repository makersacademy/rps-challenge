feature "Testing welcome page" do
  scenario "Check game name" do
    visit('/')
    expect(page).to have_content "Rock Paper Scissors"
  end
end 

  feature "Test name input" do
    scenario "Testing to see if theres a name input" do
    visit('/')
    expect(page).to have_content "Please enter your name"
  end
end
