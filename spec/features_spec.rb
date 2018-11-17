feature "Testing infrastructure" do
  scenario "index shows Welcome To Rock, Paper, Scissors!" do
    visit('/')
    expect(page).to have_content "Welcome To Rock, Paper, Scissors!"
  end

  scenario "index shows Please enter your name" do
    visit('/')
    expect(page).to have_content "Please enter your name"
  end

  scenario "shows the play page after user enters name" do
    visit_and_fill_in_player_name
    expect(page).to have_content "Choose your weapon: Rock, Paper or Scissors?"
    expect(page).not_to have_content "Welcome"
  end
end
