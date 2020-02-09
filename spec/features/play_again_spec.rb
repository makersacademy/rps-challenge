feature "play again after winning" do
  scenario "player can click button to play again after complete game" do
    sign_in
    click_on "Rock"
    click_on "Scissors"
    expect(page).to have_content "diana chose Rock"
    expect(page).to have_content "diana wins!"
    expect(page).to have_selector(:link_or_button, "Play again?")
  end
end