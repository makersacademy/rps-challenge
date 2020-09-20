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

end