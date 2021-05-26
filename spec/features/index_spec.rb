feature "index" do
  scenario "welcome" do
    visit "/"
    expect(page).to have_content "Welcome to:"
  end
  scenario "game name" do
    visit "/"
    expect(page).to have_content "ROCK, PAPER, SCISSORS"
  end
  scenario "option" do
    visit "/"
    expect(page).to have_content "Choose your game"
  end
  scenario "single game" do
    visit "/"
    find_button("Single Player").click
  end
  scenario "multi game" do
    visit "/"
    find_button("Multiplayer").click
  end
end
