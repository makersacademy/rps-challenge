feature 'single player home page' do
  scenario 'user enters their name' do
    enter_name_and_play
  end

  scenario 'user submits their name and arrives at the play page' do
    enter_name_and_play
    expect(page).to have_current_path "/single_player_play"
  end

  scenario 'user sees an error if they do not enter a name' do
    visit '/single_player_home'
    click_button "Play!"
    expect(page).to have_content "Please specify a name before playing!"
  end
end

feature "play page" do
  scenario "shows the player's name vs. the computer" do
    enter_name_and_play
    expect(page).to have_content "Alice vs. RPSbot"
  end

  scenario "asks the player to choose an option" do
    enter_name_and_play
    expect(page).to have_content "Alice, choose your weapon..."
  end
end

feature "weapon buttons" do
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

  scenario "clicking a button takes the user to the results page" do
    click_button "ROCK"
    expect(page).to have_current_path("/results")
  end
end
