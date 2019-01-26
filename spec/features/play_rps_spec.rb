describe "can play a game of single player Rock, paper scissors", type: :feature do
  before(:each) do
    sign_in_single_player
  end
  it "allows players to choose rock and either win or lose" do
    srand(534)
    click_on("rock")
    expect(page).to have_content("computer wins!")
  end
  it "allows players to choose paper and either win or lose" do
    srand(534)
    click_on("paper")
    expect(page).to have_content("It's a draw!")
  end
  it "allows players to choose scissors and either win or lose" do
    srand(534)
    click_on("scissors")
    expect(page).to have_content("someguy wins!")
  end
end
