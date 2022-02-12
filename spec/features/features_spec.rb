# User Story 1
# As a marketeer
# So that I can see my name in lights
# I would like to register my name before playing an online game
def register
  visit('/')
  fill_in "player", with: "Marketeer"
  click_button "Register"
end

feature 'Registering a name' do
  scenario 'player submits their name' do
    register
    expect(page).to have_content("Marketeer")
  end
end
# User Story 2
# As a marketeer
# So that I can enjoy myself away from the daily grind
# I would like to be able to play rock/paper/scissors
feature 'Plays Rock, Paper, Scissors' do
  scenario 'player starts a game' do
    register
    click_button "Play"
    expect(page).to have_content("Game Started")
  end

  scenario 'player is shown options' do
    register
    click_button "Play"
    expect(page).to have_button("Rock")
    expect(page).to have_button("Paper")
    expect(page).to have_button("Scissors")
  end

end