feature "player 1 play page" do
  before do
    enter_two_names_and_play
  end

  scenario "should ask the other player to look away" do
    expect(page).to have_content "Bob, look away now!"
  end

  scenario "should have a 'rock' button" do
    rock = "input[type=submit][value='ROCK']"
    expect(page).to have_selector rock
  end

  scenario "should have a 'paper' button" do
    paper = "input[type=submit][value='PAPER']"
    expect(page).to have_selector paper
  end

  scenario "should have a 'scissors' button" do
    scissors = "input[type=submit][value='SCISSORS']"
    expect(page).to have_selector scissors
  end

  scenario "clicking a button takes the marketeers to the player 2 play page" do
    click_button "ROCK"
    expect(page).to have_current_path("/player_2_play")
  end
end
