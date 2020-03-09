require "spec_helper"

# As a marketeer
# So that I can enjoy myself away from the daily grind
# I would like to be able to play rock/paper/scissors


feature "playing a game" do
  before do
    sign_and_play
  end
# the marketeer will be presented the choices (rock, paper and scissors)
  scenario "player can see the options" do
    expect(page).to have_button("Rock")
    expect(page).to have_button("Paper")
    expect(page).to have_button("Scissors")
  end

# the marketeer can choose one option
  scenario "player can choose an option" do
    click_button("Rock!")
    expect(page).to have_content("You chose Rock!")
    # click_button("Paper!")
    # click_button("Scissors!")
  end

# the game can choose one option
  scenario "computer chose 'Rock'" do
    click_button("Rock!")
    message = find(:css, "#computer").text
    expect(computer_choice).to include message
    # computer_choice method defined in web_helpers
  end


# the game will choose a random option
  scenario "computer choses a random option" do
    click_button("Rock!")
    srand(1)
    expect(page).to have_content("Computer chose Rock!")
  end

# a winner will be declared
  scenario "player wins" do
    click_button("Scissors!")
    srand(2)
    expect(page).to have_content("You win!")
  end

  scenario "player loses" do
    click_button("Scissors!")
    srand(0)
    expect(page).to have_content("You lose!")
  end

  scenario "draw" do
    click_button("Rock!")
    srand(1)
    expect(page).to have_content("It's a draw!")
  end

end
