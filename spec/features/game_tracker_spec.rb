feature "lets player pick an action" do
  scenario "looking for attack" do
    name_entry
    expect(page).to have_link("Rock")
    expect(page).to have_link("Paper")
    expect(page).to have_link("Scissors")
    expect(page).to have_link("Lizard")
    expect(page).to have_link("Spock")
  end
end
