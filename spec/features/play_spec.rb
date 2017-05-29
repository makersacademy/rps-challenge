# As a marketeer
# So that I can enjoy myself away from the daily grind
# I would like to be able to play rock/paper/scissors

feature "playing a RPS game" do
  RANDOM_SEED = 221563

  # As a marketeer
  # So I can play a game
  # I would like to select an RPS option

  scenario "I can see my options to play" do
    sign_in_and_play
    expect(page).to have_content("Rock")
    expect(page).to have_content("Paper")
    expect(page).to have_content("Scissors")
  end

  # As a marketeer
  # So I can play a game
  # I would like to choose a shape to play

  scenario "I can select and confirm a shape to play" do
    sign_in_and_play
    click_button("rock")
    expect(page).to have_content("You have selected Rock!")
  end

  # As a marketeer
  # So I can play a game
  # I would like the computer to choose a shape to play randomly

  scenario "The computer select a random shape" do
    sign_in_and_play
    srand(RANDOM_SEED)
    click_button("rock")
    expect(page).to have_content("The computer had selected Scissors!")
  end

  # As a marketeer
  # So I can enjoy a challenge
  # I would like the game to draw

  scenario "I draw a game and confirm it" do
    sign_in_and_play
    srand(RANDOM_SEED)
    click_button("scissors")
    expect(page).to have_content("It's a draw!")
  end

  # As a marketeer
  # So I can enjoy a challenge
  # I would like the game to lose

  scenario "I want to win a game and confirm it" do
    sign_in_and_play
    srand(RANDOM_SEED)
    click_button("rock")
    expect(page).to have_content("You won the game!")
  end
end
