feature "Selecting an option" do
  scenario "The user is able to select Rock, Paper or Scissors" do
    register_and_play
    click_button("Paper")
    expect(page).to have_content "You chose Paper"
  end
end
