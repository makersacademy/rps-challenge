feature "Choose move" do
  scenario "allows the player to choose Rock, Paper or Scissors" do
    sign_in_and_play
    expect(page).to have_button("Rock")
    expect(page).to have_button("Paper")
    expect(page).to have_button("Scissors")
  end
end
