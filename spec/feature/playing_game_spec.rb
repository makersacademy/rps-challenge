feature "playing game" do
  before do
    create_game
    allow_any_instance_of(Player).to receive(:select_random).and_return("✌")
  end

  scenario "player wins - player goes rock, computer goes scissors" do
    choose "✊"
    click_button "Continue"
    expect(page).to have_content "You won Buffon, Computer chose ✌"
  end

  scenario "plaer loses - player goes paper, computer goes scissors" do
    choose "🖐️"
    click_button "Continue"
    expect(page).to have_content "Computer chose ✌ so you lose, Buffon"
  end

  scenario "it is a draw - player goes rock, computer goes scissors" do
    choose "✌"
    click_button "Continue"
    expect(page).to have_content "It's a draw, you both chose ✌"
  end
end
