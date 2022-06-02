feature "Enter player name" do
  scenario "submitting a name" do
    visit('/')
    fill_in :player_1_name, with: "Joe"
    click_button "Submit"

    #save_and_open_page
    expect(page).to have_content "Joe vs. AI"
  end
end