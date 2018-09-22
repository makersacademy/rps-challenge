feature "Once a move is selected" do
  scenario "Users can see if they won or lost" do
    sign_in_and_play
    select_move("Rock")
    expect(page).to have_content("You won, Billy!")
  end
end
