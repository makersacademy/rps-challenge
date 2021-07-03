# As a marketeer
# So that I can enjoy myself away from the daily grind
# I would like to be able to play rock/paper/scissors
feature "page shows players name" do
  scenario "Game page loads" do
    visit "/"
    fill_in :player_name, with: "Andrew"
    click_button "Submit"
    expect(page).to have_content "Make your move"
  end
end
