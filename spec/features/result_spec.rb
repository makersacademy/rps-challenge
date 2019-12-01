feature "Both players have made their selection" do

  before do
    sign_in_and_play
    srand(2) # seeds computer's turn to "Rock"
  end

  scenario "it displays Hannah as the winner" do
    choose "paper"
    click_button "GO!"
    expect(page).to have_content "Hannah wins!"
  end

  scenario "it displays the computer as the winner" do
    choose "scissors"
    click_button "GO!"
    expect(page).to have_content "Computer wins!"
  end

  scenario "it displays that it's a draw" do
    choose "rock"
    click_button "GO!"
    expect(page).to have_content "It's a draw!"
  end

end
