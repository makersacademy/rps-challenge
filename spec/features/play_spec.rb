feature "play buttons" do
  scenario "player is able to select one button from the three options" do
    sign_in_and_play

    expect(page.find_button("Rock").visible?).to be true
    expect(page.find_button("Paper").visible?).to be true
    expect(page.find_button("Scissors").visible?).to be true
  end
end
