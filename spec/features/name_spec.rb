feature "players name in lights" do
  scenario "player enters there name" do
    enter_name_submit
    expect(page).to have_content "Adam vs Computer"
  end
end
