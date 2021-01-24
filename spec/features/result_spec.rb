feature "result" do
  
  scenario "displays move picked by player" do
    pick_rock
    expect(page).to have_content "Rock"
  end
end