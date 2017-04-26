feature "Enter names" do
  scenario "Filling in names in a form" do
    visit("/")
    fill_in :name, with: "Sophie"
    click_button "Submit"
    expect(page).to have_content "Sophie"
  end
end
