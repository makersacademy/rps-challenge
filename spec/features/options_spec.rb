# As a marketeer
# So that I can enjoy myself away from the daily grind
# I would like to be able to play rock/paper/scissors

# the marketeer will be presented the choices (rock, paper and scissors)
# the marketeer can choose one option and obtain a confirmation of the chosen option

feature "provide options to player" do

  scenario "player can choose Rock" do
    sign_in_and_play
    click_button('Rock')
    expect(page).to have_content('You selected "Rock".')
  end

  scenario "player can choose Scissors" do
    sign_in_and_play
    click_button('Scissors')
    expect(page).to have_content('You selected "Scissors".')
  end

  scenario "player can choose Paper" do
    sign_in_and_play
    click_button('Paper')
    expect(page).to have_content('You selected "Paper".')
  end
end
