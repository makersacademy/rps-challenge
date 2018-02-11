feature "Player's option" do
  scenario "The player is able to select Rock" do
    register_name
    click_button("Rock")
    expect(page).to have_content "Serena chose Rock"
  end

  scenario "The player is able to select Paper" do
    register_name
    click_button("Paper")
    expect(page).to have_content "Serena chose Paper"
  end

  scenario "The player is able to select Scissors" do
    register_name
    click_button("Scissors")
    expect(page).to have_content "Serena chose Scissors"
  end
end
