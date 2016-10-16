feature "Enter player name" do
  scenario "player enters name, clicks play and views /play" do
    visit "/"
    fill_in "player_name", with: "Laura"
    click_button "Play"
    expect(page).to have_text("Ready Laura?")
  end
end
