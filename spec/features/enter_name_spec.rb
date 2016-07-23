feature "Enter name" do
  scenario "submitting name" do
    visit ('/')
    fill_in :player_name, with: "Albie"
    click_button "Submit"
    expect(page).to have_text "Albie vs. Computer"
  end
end
