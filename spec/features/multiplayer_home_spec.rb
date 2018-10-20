feature "multiplayer home page" do
  before do
    visit '/'
    click_button "Multiplayer"
  end

  scenario 'entering 2 names takes the user to the player 1 play page' do
    enter_two_names_and_play
    expect(page).to have_current_path('/player_1_play')
  end

  scenario "displays a message if either name is left blank" do
    click_button "Play!"
    expect(page).to have_content "Please specify both names before playing!"
  end
end
