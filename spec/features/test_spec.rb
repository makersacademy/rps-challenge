require "./app.rb"

feature "finds server and content" do

  scenario "tests for page to exist" do
    visit("/")
    expect(page).to have_content("Welcome to the Rock, Paper, Scissors challenge!")
  end

end
