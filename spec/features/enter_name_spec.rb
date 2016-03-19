feature "Enter player" do
  scenario "solo player enters name" do
    sign_in_and_play
    expect(page).to have_content "Mittens vs Computer"
  end

  scenario "two players enter names" do
    visit "/"
    fill_in(:player_1, with: "Mittens")
    fill_in(:player_2, with: "Fluffy")
    click_button "Play!"
    expect(page).to have_content "Mittens vs Fluffy"
  end
end
