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
    expect(page).to have_button("Rock!")
    expect(page).to have_button("Paper!")
    expect(page).to have_button("Scissors!")
  end

# the marketeer can choose one option
  scenario "player can choose an option" do
    click_button("Rock!")
    expect(page).to have_content("You chose Rock!")
    # click_button("Paper!")
    # click_button("Scissors!")
  end

end
