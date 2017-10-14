feature "Single player VS Multiplayer Game" do
  scenario "Player clicks Human VS Computer button" do
    visit("/")
    click_button("Human Vs Computer")
    expect(page).to have_content("Please enter your name")
  end

  feature "The game page" do
    scenario "Player fills in the name Mormolis" do
    visit("/")
    click_button("Human Vs Computer")
    fill_in :players_name, with: "Mormolis"
    click_button("Play!")
    expect(page).to have_content("Mormolis turn!")
  end
end
    
end