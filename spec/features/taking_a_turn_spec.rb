
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
    click_button "paper"
    expect(page).to have_content "Winner is: Luh-ishan"
  end
end