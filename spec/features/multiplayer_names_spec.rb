feature "Selecting multiplayer and filling in names" do
  scenario "Multiplayer names page displays the users names" do
    visit("/")
    click_button "Pass and Play (2 player mode)"
    fill_in :player_1_name, with: "Chris"
    fill_in :player_2_name, with: "Coding"
    click_button 'Submit'

    expect(page).to have_content "Chris vs Coding"
  end
end