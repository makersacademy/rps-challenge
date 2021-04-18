require "./spec/features/web_helpers"

feature "Home page" do
  scenario "should show the name of the game" do
    visit("/")
    expect(page).to have_content("Rock - Paper - Scissors")
  end

  scenario "propose the user to play" do
    visit("/")
    expect(page).to have_content("Hey, Wanna play?")
  end
end

feature "In player registration section" do
  scenario "the player should fill in the name" do
    login_and_play
    expect(page).to have_content("Mike vs MATRIX")
  end
end
