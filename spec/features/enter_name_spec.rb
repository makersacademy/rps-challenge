feature "Enter Player Name" do
  scenario "input field for player name" do
    visit '/'
    click_button "Start"
    find_field 'player_name'
  end

  scenario "player name saved for reuse" do
    visit '/'
    click_button "Start"
    fill_in :player_name, with: "Johnson"
    click_button "Submit"
    expect(page).to have_content "Johnson choose your weapon"
  end

end
