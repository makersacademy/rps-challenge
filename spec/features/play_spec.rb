feature 'playing rock, paper, scissors' do

  it "displays who won if player 1 selects rock" do
    sign_in_and_play
    click_button "rock"
    page.has_content?("Sophia wins!") or page.has_content?("Computer wins!") or page.has_content?("It's a draw")
  end

  it "displays who won if player 1 selects paper" do
    sign_in_and_play
    click_button "paper"
    page.has_content?("Sophia wins!") or page.has_content?("Computer wins!") or page.has_content?("It's a draw")
  end

  it "displays who won if player 1 selects scissors" do
    sign_in_and_play
    click_button "scissors"
    page.has_content?("Sophia wins!") or page.has_content?("Computer wins!") or page.has_content?("It's a draw")
  end

end
