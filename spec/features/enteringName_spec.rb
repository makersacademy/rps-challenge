feature "Entering a name causes to ask for the movement" do
  scenario "When you enter your name, the app asks you about your movement" do
    visit("/")
    fill_in :name, with: "soroush"
    click_button "Submit"
    expect(page).to have_content "Please select your movement soroush."
  end
end
