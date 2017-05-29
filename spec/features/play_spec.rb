# As a marketeer
# So that I can enjoy myself away from the daily grind
# I would like to be able to play rock/paper/scissors

feature "playing a RPS game" do

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
    click_button("Rock")
    expect(page).to have_content("You have selected Rock!")
  end

  # As a marketeer
  # So I can play a game
  # I would like the computer to choose a shape to play randomly

  scenario "The computer select a random shape" do
    sign_in_and_play
    click_button("Rock")
    expect(computer_possible_choice_message).to include("The computer had selected Rock!")
    expect(computer_possible_choice_message).to include("The computer had selected Paper!")
    expect(computer_possible_choice_message).to include("The computer had selected Scissors!")
  end
end
