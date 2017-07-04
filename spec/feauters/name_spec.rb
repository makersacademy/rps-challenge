feature "Enter your name" do
  scenario "submitting name" do
    visit('/')
    fill_in :player_name, with: "Daniel"
    click_button "Submit"
    expect(page).to have_content "Welcome, Daniel. Choose your weapon!"
  end
end
