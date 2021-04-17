feature "Testing infrastructure" do
  scenario "Can run app and check page content" do
    visit("/")
    expect(page).to have_content "Welcome to Rock, Paper, Scissors"
  end
end

feature "Players can add enter their names" do
  scenario "submit names" do
    visit("/")
    fill_in :player_1_name, with: "Player 1"
    click_button "Start game"
    expect(page).to have_content "Welcome Player 1, let's play Rock, Paper, Scissors!"
  end
end
