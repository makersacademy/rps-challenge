feature "Choose a weapon" do
  scenario "A player selects rock as their weapon" do
    pick_rock
    expect(page).to have_content "You picked Rock"
  end
end
