feature "Enter name" do
  scenario "submitting name" do
    visit('/')
    fill_in :name, with: "Fran"
    click_button "Submit"
    expect(page).to have_content "Fran"
  end
end
