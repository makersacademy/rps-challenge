feature "Player can choose a move" do
  scenario "player chooses rock, it confirms choice" do
    sign_in
    click_button("rock")
    expect(page).to have_content("Kevin chose: rock")
  end
  scenario "player chooses paper, it confirms choice" do
    sign_in
    click_button("paper")
    expect(page).to have_content("Kevin chose: paper")
  end
end
