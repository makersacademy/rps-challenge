feature "game over" do
  scenario "players displayed" do
    visit("/")
    fill_in :human, with: "Nima"
    click_button("submit")
    visit("/game_over")
    expect(page).to have_content("Nima vs computer")
  end
end
