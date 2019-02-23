feature 'Play game' do
  scenario 'allow player1 to select weapon and play game ' do
    signup_and_play
    select "scissors", from: "player_1_weapon"
    select "paper", from: "player_2_weapon"
    click_button('Play')
    expect(page).to have_content("Ant selected scissors")
    expect(page).to have_content("Elephant selected paper")
    expect(page).to have_content("Ant wins!")
  end
end
