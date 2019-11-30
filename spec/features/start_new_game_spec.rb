feature "Starting a new game" do
  scenario "should give the user the chance to start a new game, after a tie" do
    srand(0)
    visit_and_enter_name
    play_a_game
    click_on "Start a new game"
    expect(page).to have_content "Welcome Andrea, let's start a game!"
  end

  scenario "should give the user the chance to start a new game, after a win" do
    srand(4)
    visit_and_enter_name
    play_a_game
    click_on "Start a new game"
    expect(page).to have_content "Welcome Andrea, let's start a game!"
  end

  scenario "should give the user the chance to start a new game, after a lost" do
    srand(3)
    visit_and_enter_name
    play_a_game
    click_on "Start a new game"
    expect(page).to have_content "Welcome Andrea, let's start a game!"
  end
end
