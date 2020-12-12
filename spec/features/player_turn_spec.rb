feature "Player can choose a move" do
  scenario "player chooses rock, it confirms choice" do
    sign_in
    click_button("rock")
    expect(page).to have_content("You chose rock")
  end
end
