feature "Player 1 wins" do
  scenario "Player wins game and is confirmed on page" do
    sign_in_and_play
    click_button("Rock")
    click_button("Scissors")
    expect(page).to have_content "Jordan selected Rock & Kyle Scissors The winner is.... Jordan"
  end
end
