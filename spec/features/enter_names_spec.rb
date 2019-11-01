feature "Enter names" do
  scenario "can submit a name" do
    visit("/")
    fill_in :player_1_name, with: "Sarah"
    click_button "Submit"
    expect(page).to have_content "Sarah vs PC"
  end
end
