
feature "Enter name" do
  scenario "submitting name" do
    visit('/')
    fill_in :player_name, with: "Lukasz"
    click_button "Submit"
    expect(page).to have_content "Welcome, Lukasz. Choose your tool!"
  end
end