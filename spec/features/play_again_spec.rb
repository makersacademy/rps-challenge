feature "play again after winning" do
  scenario "player can click button to play again after complete game" do
    sign_in
    click_on "Lizard"
    click_on "Spock"
    expect(page).to have_content "diana chose Lizard"
    expect(page).to have_content "diana wins!"
    expect(page).to have_selector(:link_or_button, "Play again?")
  end
end