feature "play buttons" do
  scenario "player is able to select one button from the three options" do
    sign_in_and_play

    expect(page).to have_content("Rock Paper Scissors")
  end
end
