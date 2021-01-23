feature "playing RPS game" do

  scenario "choosing to play paper" do
    enter_name_and_start_game
    click_button "PAPER"
    expect(page).to have_content "Charlotte chose paper"
  end

  scenario "the opponent played the same type" do
    srand(3)
    enter_name_and_start_game
    click_button "SCISSORS"
    expect(page).to have_content "opponentbot also chose scissors!"
  end

  scenario "find out it was a draw" do
    srand(3)
    enter_name_and_start_game
    click_button "SCISSORS"
    expect(page).to have_content "It was a draw"
  end

  scenario "winning the game" do
    srand(3)
    enter_name_and_start_game
    click_button "ROCK"
    expect(page).to have_content "Charlotte is the winner!"    
  end

  scenario "playing another round" do
    enter_name_and_start_game
    click_button "ROCK"
    click_link "Play again?"
    expect(page).to have_content "Charlotte vs opponentbot!"
  end

end
