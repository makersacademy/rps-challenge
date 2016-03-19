feature "Choose weapon" do
  scenario "there are weapons to choose from" do
    single_sign_in
    expect(page).to have_button("Rock")
    expect(page).to have_button("Paper")
    expect(page).to have_button("Scissors")
  end

  scenario "allow second player to choose weapon" do
    double_sign_in
    click_button "Rock"
    expect(page).to have_content "Fluffy's turn to choose weapon:"
    expect(page).to have_button("Rock")
    expect(page).to have_button("Paper")
    expect(page).to have_button("Scissors")
  end
end
