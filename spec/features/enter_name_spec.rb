feature "Enter player" do
  scenario "Player enters name before game starts" do
    sign_in_and_play
    expect(page).to have_content "Mittens vs Computer"
  end
end
