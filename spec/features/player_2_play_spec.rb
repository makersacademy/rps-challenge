feature "player 2 play page" do
  before do
    enter_two_names_and_play
    click_button "rock"
  end

  scenario "should have a 'rock' button" do
    rock = "input[type=submit][value='rock']"
    expect(page).to have_selector rock
  end

  scenario "should have a 'paper' button" do
    paper = "input[type=submit][value='paper']"
    expect(page).to have_selector paper
  end

  scenario "should have a 'scissors' button" do
    scissors = "input[type=submit][value='scissors']"
    expect(page).to have_selector scissors
  end

  scenario "clicking a button takes the marketeers to the results page" do
    click_button "scissors"
    expect(page).to have_current_path("/results")
  end
end
