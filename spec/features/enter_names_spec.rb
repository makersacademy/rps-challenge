feature "Enter Name" do
  scenario "player submits name" do
    visit('/')

    fill_in :player_1_name, with: "Rachel"
    click_button "Submit"
    expect(page).to have_content "Rachel vs. Computer"
  end
end
