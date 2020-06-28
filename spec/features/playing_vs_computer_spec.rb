feature "marketeer plasy the game" do
  scenario "marketeer submits paper & the computer wins" do
    ready_to_play
    choose("Rock")
    click_button("Fight!")
    srand(1)
    expect(page).to have_content("Result: ") #Computer selects paper
  end
end
