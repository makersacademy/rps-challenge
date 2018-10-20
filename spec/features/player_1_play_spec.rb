feature "player 1 play page" do
  before do
    enter_two_names_and_play
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

  scenario "clicking a button takes the marketeers to the player 2 play page" do
    click_button "rock"
    expect(page).to have_current_path("/player_2_play")
  end
end

# feature 'player 1 play page' do
#   scenario '' do
#     visit "/multiplayer_home"
#     fill_in "name_1", with: "Alice"
#     fill_in "name_2", with: "Bob"
#     click_button "Play!"
#     expect(page).to have_current_path('/player_1_play')
#   end
# end
