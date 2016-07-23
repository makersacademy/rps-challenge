feature "Choice" do
  scenario "has 'Rock' option button" do
    register_and_play
    expect(page).to have_button("ROCK")
  end
  scenario "has 'Paper' option button" do
    register_and_play
    expect(page).to have_button("PAPER")
  end
  scenario "has 'Scissors' option button" do
    register_and_play
    expect(page).to have_button("SCISSORS")
  end
end
