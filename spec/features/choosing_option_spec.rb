feature "Choosing option" do
  scenario "Player can choose an option and see which they picked" do
    single_sign_in_and_play
    click_button "Rock"
    expect(page).to have_content "You picked Rock"
  end
end
