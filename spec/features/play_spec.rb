feature "Player can choose option" do
  scenario "Player can choose between Rock, Paper or Scissors" do
    visit "/"
    fill_in(:name, with: "Tolu")
    click_button "Play"
    expect(page).to have_button("Rock")
    expect(page).to have_button("Paper")
    expect(page).to have_button("Scissors")
  end
end
