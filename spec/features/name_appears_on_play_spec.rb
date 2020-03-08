feature "name" do
  scenario "entered appears on play" do
    visit("/")
    fill_in :human, with: "Nima"
    click_button("submit")
    expect(page).to have_content("Nima")
  end
  scenario "computer name appears on play" do
    visit("/")
    fill_in :human, with: "Nima"
    click_button("submit")
    expect(page).to have_content("computer")
  end
end