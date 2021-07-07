feature "game over" do
  scenario "player" do
    enter_name_and_submit
    visit("/game_over")
    expect(page).to have_content("Nima")
  end
  scenario "computer displayed" do
    enter_name_and_submit
    visit("/game_over")
    expect(page).to have_content("computer")
  end
end
