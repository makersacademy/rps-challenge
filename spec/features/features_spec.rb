# User Story 1
# As a marketeer
# So that I can see my name in lights
# I would like to register my name before playing an online game
feature 'Registering a name' do
  scenario 'player submits their name' do
    visit('/')
    fill_in "player", with: "Marketeer"
    click_button "Register"
    expect(page).to have_content("Marketeer")
  end
end
# User Story 2
# As a marketeer
# So that I can enjoy myself away from the daily grind
# I would like to be able to play rock/paper/scissors
feature 'Plays Rock Paper Scissors' do
  scenario 'player starts a game' do
    visit('/')
    fill_in "player", with: "Marketeer"
    click_button "Register"
    click_button "Play"
    expect(page).to have_content("Game Started")
  end

end