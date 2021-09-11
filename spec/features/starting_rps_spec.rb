feature "Starting the game" do
    before do
      visit '/'
      fill_in :player_1_name, with: "Jake"
      click_button "Submit"
    end
  scenario "Selecting RPS" do
    expect(page).to have_content "Rock"
    expect(page).to have_content "Paper"
    expect(page).to have_content "Scissors"
  end
end