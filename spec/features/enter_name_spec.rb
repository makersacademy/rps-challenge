feature "Enter player" do
  scenario "Player enters name before game starts" do
    visit "/"
    fill_in(:player, with: "Fluffy")
    click_button "Play!"
    expect(page).to have_content "Fluffy vs Computer"
  end
end
