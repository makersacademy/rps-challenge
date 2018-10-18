feature "button" do
  before do
    enter_name_and_play
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
end
