feature "See opponent" do
  # As a marketeer
  # So that I know who I'm up against
  # I would like to see my opponent
  scenario "Sees an opponent's name" do
    enter_batman
    expect(page).to have_content "Joker"
  end
end
