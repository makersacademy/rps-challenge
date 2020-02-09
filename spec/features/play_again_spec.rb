feature "play again after winning" do
  scenario "player can click button to play again after complete game" do
    allow_any_instance_of(Array).to receive(:sample).and_return("Scissors")
    sign_in
    click_on "Rock"
    expect(page).to have_content "dave chose Rock"
    expect(page).to have_content "Computer chose Scissors"
    expect(page).to have_content "You win!"
    expect(page).to have_selector(:link_or_button, "Play again?")
  end
end