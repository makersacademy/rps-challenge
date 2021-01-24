feature "playing RPS game" do

  scenario "choosing to play paper" do
    enter_name_and_start_game
    click_button "PAPER"
    expect(page).to have_content "Charlotte chose paper"
  end

  scenario "the opponent played the same type" do
    enter_name_and_start_game
    click_button "SCISSORS"
    expect(page).to have_content "Opponentbot also chose scissors!"
  end

  scenario "find out it was a draw" do
    enter_name_and_start_game
    click_button "SCISSORS"
    expect(page).to have_content "It was a draw"
  end

  scenario "winning the game" do
    enter_name_and_start_game
    click_button "ROCK"
    expect(page).to have_content "Charlotte is the winner!"    
  end

  scenario "playing another round" do
    enter_name_and_start_game
    click_button "ROCK"
    click_link "Play again?"
    expect(page).to have_content "Charlotte vs Opponentbot!"
  end

  scenario "starting again from the beginning with a new player name" do
    enter_name_and_start_game
    click_button "ROCK"
    click_link "Start again with a new name"
    expect(page).to have_content "What is your name?"
  end

end
