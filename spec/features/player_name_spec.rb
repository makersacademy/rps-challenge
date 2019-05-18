feature "player name" do
  scenario "it allows player to submit their name" do
    visit ("/")
    fill_in :player_name, with: "Sam"
    click_button "Play"
    expect(page).to have_content "Welcome to Rock Paper Scissors, Sam"
  end
end
