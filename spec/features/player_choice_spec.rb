feature "Selecting an option" do
  scenario "The user is able to select Rock" do
    register_and_play
    click_button("Rock")
    expect(page).to have_content "You chose Rock"
  end

  scenario "The user is able to select Paper" do
    register_and_play
    click_button("Paper")
    expect(page).to have_content "You chose Paper"
  end

  scenario "The user is able to select Scissors" do
    register_and_play
    click_button("Scissors")
    expect(page).to have_content "You chose Scissors"
  end
end
