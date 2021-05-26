feature "Single Player" do
  scenario "welcome to user" do
    singleplayer
    expect(page).to have_content "Javi please choose your card"
  end
  scenario "there is a 'rock' card" do
    singleplayer
    find_button("ROCK").click
  end
  scenario "there is a 'paper' card" do
    singleplayer
    find_button("PAPER").click
  end
  scenario "there is a 'scissors' card" do
    singleplayer
    find_button("SCISSORS").click
  end
  scenario "new game" do
    p2_multiplayer
    click_link("New game")
    visit "/multigame"
    expect(page).to have_content "Javi please choose your card"
  end
  scenario "add new players" do
    p2_multiplayer
    click_link("New player")
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
