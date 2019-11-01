feature "Register name" do
  # As a marketeer
  # So that I can see my name in lights
  # I would like to register my name before playing an online game
  scenario "Can enter a name and see name" do
    visit("/")
    fill_in :player_1_name, with: "Batman"
    click_button "Submit"
    expect(page).to have_content "Batman"
  end
end
