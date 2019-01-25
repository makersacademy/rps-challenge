feature "players name in lights" do
  scenario "player enters one name" do
    enter_one_name
    expect(page).to have_content "Adam vs Computer"
  end
  scenario "player enters two names" do
    enter_two_names
    expect(page).to have_content "Mel vs Sue"
  end
end
