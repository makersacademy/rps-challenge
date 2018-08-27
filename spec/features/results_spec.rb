feature "Results displayed" do
  before do
    stub_const("Game::VALID_MOVES", ["SCISSORS"])
    sign_in_and_play
  end

  scenario "When there is a draw" do
    click_button "SCISSORS"
    expect(page).to have_content "IT'S A DRAW!"
  end

  scenario "When the computer wins" do
    click_button "PAPER"
    expect(page).to have_content "COMPUTER WINS!"
  end

  scenario "When the player wins" do
    click_button "ROCK"
    expect(page).to have_content "YOU WIN!"
  end
end
