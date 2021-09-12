feature "Selects weapon" do
  scenario "allows to select a weapon" do
    register_name
    click_button "Rock"
    expect(page).to have_content "Gianluca played Rock"
  end

  scenario "allows computer to select a weapon" do
    register_name
    click_button "Rock"
    expect(page).to have_content "Gianluca played Rock"
    expect(page).to have_content "Archaon played Rock"
  end
end
