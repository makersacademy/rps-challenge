# As a marketeer
# So that I can see my name in lights
# I would like to register my name before playing an online game
feature 'Register player names' do
  scenario 'User can enter their name to register for the game' do
    sign_in_and_play
    expect(page).to have_content 'Player 1: Will'
  end
end

# As a marketeer
# So that I can enjoy myself away from the daily grind
# I would like to be able to play rock/paper/scissors
feature 'Play a game of rock/paper/scissors' do
  scenario 'Player 1 can play a game of rock/paper/scissors' do
    sign_in_and_play
    expect(page).to have_content 'Choose rock, paper or scissors'
  end
end
