describe "can play a game of single player Rock, paper scissors", type: :feature do
  before(:each) do
    sign_in_single_player
  end
  it "allows players to choose rock and either win or lose" do
    click_on("rock")
    expect(page).to have_content("You win!").or have_content("You lose!")
  end
  it "allows players to choose paper and either win or lose" do
    click_on("paper")
    expect(page).to have_content("You win!").or have_content("You lose!")
  end
  it "allows players to choose scissors and either win or lose" do
    click_on("scissors")
    expect(page).to have_content("You win!").or have_content("You lose!")
  end
end
