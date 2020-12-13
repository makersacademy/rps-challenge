feature "Multi Player" do
  scenario "player one choose" do
    multiplayer
    expect(page).to have_content "Javi please choose your card"
  end
  scenario "there is a 'rock' card for player 1" do
    multiplayer
    find_button("ROCK").click
  end
  scenario "there is a 'paper' card for player 1" do
    multiplayer
    find_button("PAPER").click
  end
  scenario "there is a 'scissors' card for player 1" do
    multiplayer
    find_button("SCISSORS").click
  end
  scenario "player two choose" do
    multiplayer
    expect(page).to have_content "Javi please choose your card"
  end
  scenario "there is a 'rock' card for player 2" do
    multiplayer
    find_button("ROCK").click
  end
  scenario "there is a 'paper' card for player 2" do
    multiplayer
    find_button("PAPER").click
  end
  scenario "there is a 'scissors' card for player 2" do
    multiplayer
    find_button("SCISSORS").click
  end
  scenario "game tied" do
    tied_multiplayer
    expect(page).to have_content "Game tied"
  end
  scenario "player one wins" do
    p1_multiplayer
    expect(page).to have_content "Player 1 wins!!"
  end
  scenario "player two wins" do
    p2_multiplayer
    expect(page).to have_content "Player 2 wins!!"
  end
  scenario "reset the game by a link" do
    p2_multiplayer
    click_link("Game options")
    visit "/"
  end
  scenario "new players" do
    p2_multiplayer
    click_link("New game")
    visit "/multigame"
    expect(page).to have_content "Javi please choose your card"
  end
  scenario "add new players" do
    p2_multiplayer
    click_link("New players")
    visit "/multiplayer"
    expect(page).to have_content "Enter your name"
  end
  scenario "reset the game by a link" do
    p2_multiplayer
    click_link("Game options")
    visit "/"
    expect(page).to have_content "Welcome to:"
  end
end
