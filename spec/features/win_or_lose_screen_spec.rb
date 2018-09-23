feature "Once the user has selected a move" do
  scenario "the user can see if they won or lost" do
    sign_in_one_player
    srand(3)
    select_move("Rock")
    expect(page).to have_content("Well done, Billy!")
  end
end
