feature "win the game" do
  scenario "to wn the game via the rules" do
    allow_any_instance_of(Array).to receive(:sample).and_return("Rock")
    sign_in_and_play
    select_a_move
    expect(page).to have_content "David Wins!"
  end
end