feature "Losing" do
  scenario "diplays 'You Lose' on screen if player chooses rock and computer chooses paper" do
    allow_any_instance_of(Game).to receive(:chosen_move).and_return("Paper")
    sign_in_and_play
    click_button("Rock")
    expect(page).to have_content("Computer chose Paper. You Lose :(")
  end
end
