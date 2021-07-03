feature "page shows the results" do
  scenario "Game page loads" do
    visit "/"
    fill_in :player_name, with: "Andrew"
    click_button "Submit"
    expect(page).to have_content "Make your move"
  end
end
