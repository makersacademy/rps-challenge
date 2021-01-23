# As a marketeer
# So that I can enjoy myself away from the daily grind
# I would like to be able to play rock/paper/scissors

# the marketeer will be presented the choices (rock, paper and scissors)
# the marketeer can choose one option
# the game will choose a random option
# a winner will be declared

feature 'play a game of rock paper scissors' do
  # As a marketeer
  # So that I can play a game of rock paper scissors
  # I want to see what weapons i can play with
  scenario "be able to see what weapons i can play with" do
    sign_in
    expect(page).to have_content 'Choose your weapon: Rock, Paper of Scissors'
  end

end
