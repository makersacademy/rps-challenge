feature "Enter names" do
  scenario "submitting names" do  
    visit("/")
    fill_in :player_1_name, with: "Farzan"
    click_button "Submit"

    save_and_open_page

    expect(page).to have_content "Farzan vs. Computer"
  end
end