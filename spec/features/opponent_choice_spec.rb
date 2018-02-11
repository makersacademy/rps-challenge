feature "Opponent's choice" do
  scenario "Opponent choice is made at random" do
    srand(4)
    register_and_play
    click_button("Paper")
    expect(page).to have_content("Opponent chose Scissors")
  end
end
