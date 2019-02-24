feature 'As a player I can select ' do
  scenario 'a solo mode of play and be directed to play the game with the computer' do
    visit("/")
    expect(page).to have_content("What mode would you like to play the game in?")
    choose('solo')
    click_button ('Submit')
    expect(page).to have_content("Please enter player details to start game")
    fill_in 'player1', with: "Ant"
    click_button ('Start Game')
    expect(page).to have_content("Ant Vs. Computer")
    expect(page).to_not have_content("Player2")
  end
end
