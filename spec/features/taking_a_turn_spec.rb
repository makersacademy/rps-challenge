
feature "taking a turn" do

  scenario "player 1 takes their turn", js: true do
    enter_2_players
    expect(page).to have_content "Rock"
    expect(page).to have_content "Paper"
    expect(page).to have_content "Scissors"
  end

  scenario "player 1 chooses rock, player 2 chooses paper", js: true do
    enter_2_players()
    expect(page).to have_content "Make your move,\nSargon of Akkad"
    click_button "rock"
    expect(page).to have_content "Make your move,\nLuh-ishan"
    click_button "paper"
    expect(page).to have_content "Winner is: Luh-ishan"
  end

  scenario "both players choose scissors", js: true do
    enter_2_players()
    expect(page).to have_content "Make your move,\nSargon of Akkad"
    click_button "scissors"
    click_button "scissors"
    expect(page).to have_content "draw"
  end

  scenario "player 1 chooses scissors, player 2 chooses paper", js: true do
    enter_2_players()
    click_button "scissors"
    click_button "paper"
    expect(page).to have_content "Winner is: Sargon of Akkad"
  end
end