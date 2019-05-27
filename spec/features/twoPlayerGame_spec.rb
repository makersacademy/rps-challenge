feature "Two players can play against each other" do
  scenario "When there are two players, they can play against each other" do

    visit "/"
    click_button("Two_player_game")
    fill_in("player_1_name",with: "soroush")
    fill_in("player_2_name",with: "farnaz")
    click_button("Submit")
    select "paper", from: "player_1_movement"
    click_button "Submit"
    select "scissors", from: "player_2_movement"
    click_button "Submit"
    expect(page).to have_content "farnaz won the game."

  end

end
