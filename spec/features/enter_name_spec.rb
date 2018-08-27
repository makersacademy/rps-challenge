# As a marketeer
# So that I can see my name in lights
# I would like to register my name before playing an online game
feature "page shows players name" do
  scenario "Game page loads" do
    visit "/"
    fill_in :player_name, with: "Andrew"
    click_button "Submit"
    expect(page).to have_content "Hello"
  end
end
