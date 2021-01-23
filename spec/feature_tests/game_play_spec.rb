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
    expect(page).to have_button "ROCK"
    expect(page).to have_button "PAPER"
    expect(page).to have_button "SCISSORS"
  end

  # As a marketeer
  # So that I can play a game of rock paper scissors
  # I can choose one option
  scenario "be able to choose a weapon" do
    sign_in
    player_picks_weapon
    expect(page).to have_content "You picked ROCK as your weapon!"
  end

  # As a marketeer
  # So that I can play a game of rock paper scissors
  # the game will choose an option
  scenario 'computer to generate a weapon' do
    sign_in
    player_picks_weapon
    # this finds an element within the .erb file and gives you access to the element's contents
    message = find(:css, "#computer").text
    expect(possible_message).to include message
  end


# helper method
  def possible_message
  [:rock, :paper, :scissors].map {|weapon| "Computer has picked #{weapon.to_s.upcase} as it's weapon!" }
  end

end
