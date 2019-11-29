feature "enter name" do
  scenario "visit homepage and enter name" do
    visit '/'
    fill_in :name, with: "Harrison"
    click_button "Submit"
    expect(page).to have_content("Welcome Harrison")
  end
end
