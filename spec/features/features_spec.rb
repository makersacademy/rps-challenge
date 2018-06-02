feature "Feature Tests" do
  scenario "can run main page" do
    visit("/")
    expect(page).to have_content "play rock-paper-scissors"
  end

  scenario "player can fill in their name" do
    visit("/")
    fill_in "player_name", with: "Luke Skywalker"
    click_on "Submit"
    expect(page).to have_content "Luke Skywalker vs. Computer"
  end
end