feature "Making a move and displaying results" do
  scenario "player chooses a move, winner is displayed on the result page" do
    allow_any_instance_of(Computer).to receive(:move).and_return(:scissors)
    visit "/"
    fill_in "player_name", with: "Laura"
    click_button "Play"
    click_button "rock"
    expect(page).to have_text("Laura wins!")
    expect(page).to have_text("Laura: rock vs. Computer: scissors")
  end
end
