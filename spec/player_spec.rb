require "capybara/rspec"

feature "allows players to enter names" do
  scenario "submit names of players" do
    visit("/")
    fill_in :name, with: "Player"
    click_button "Play!"
    expect(page).to have_content "Player is now playing RPS!"
  end
end
