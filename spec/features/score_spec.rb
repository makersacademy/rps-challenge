feature "Shows the scores" do

  scenario "Shows player1 score when playing computer" do
    sign_in_and_play_computer
    message = "Wayne's score: 0"
    expect(page).to have_content message
  end

  scenario "Shows computer score when playing computer" do
    sign_in_and_play_computer
    message = "Computer's score: 0"
    expect(page).to have_content message
  end

  scenario "Shows player1 score when playing human" do
    sign_in_and_play_human
    message = "Wayne's score: 0"
    expect(page).to have_content message
  end

  scenario "Shows player2 score when playing human" do
    sign_in_and_play_human
    message = "Jimmy's score: 0"
    expect(page).to have_content message
  end

  scenario "Shows player1 score when playing human" do
    p1_wins_vs_p2
    message = "Wayne's score: 1"
    expect(page).to have_content message
  end

  scenario "Shows player2 score when playing human" do
    p2_wins_vs_p1
    message = "Jimmy's score: 1"
    expect(page).to have_content message
  end

end
