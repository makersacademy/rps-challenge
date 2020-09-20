feature "naming capability" do 
  scenario "you can enter a name" do
    sign_in
    expect(page).to have_content "Player 1: Ollie"
    expect(page).to have_content "Choose your fighter!"
  end

  it "says its a draw when you both use scissors" do
    sign_in
    srand(67809)
    click_button "scissors"
    
    expect(page).to have_content "It's a draw! You both picked scissors"
  end

  it "says you have lost when you play scissors against rock" do
    sign_in
    srand(15)
    click_button "scissors"
    expect(page).to have_content "Computer wins! rock beats scissors"
  end

  scenario "I want the scoreboard to keep track of score after 1 game" do
    sign_in
    srand(15)
    click_button "scissors"
    click_link "Play Again?"
    expect(page).to have_content ("Contestant: Computer Wins: 1 Losses: 0 Draws: 0\nContestant: Ollie Wins: 0 Losses: 1 Draws: 0")
  end

  scenario "the winners score should be displayed above the losers score" do
    sign_in
    srand(15)
    click_button "scissors"
    click_link "Play Again?"
    click_button "rock"
    click_linkk "Play Again?"
    click_button "rock"
    expect(page).to have_content "Contestant: Ollie Wins: 2 Losses:1 Draws: 0\nContestant: Computer Wins: 1 Losses: 2, Draws: 0"
  end
end