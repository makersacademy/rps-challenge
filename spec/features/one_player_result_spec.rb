describe "RPS", type: :feature do

  it "Rock beats scissors" do
    srand(2)
    sign_in_one_player
    click_button 'Scissors'
    expect(page).to have_content "I win!"
  end

  it "Scissors beats paper" do
    srand(3)
    sign_in_one_player
    click_button 'Paper'
    expect(page).to have_content "I win!"
  end

  it "Paper beats rock" do
    srand(2)
    sign_in_one_player
    click_button 'Paper'
    expect(page).to have_content "you win"
  end

  it "Draw if both users pick the same" do
    srand(3)
    sign_in_one_player
    click_button 'Scissors'
    expect(page).to have_content "how boring"
  end
end
