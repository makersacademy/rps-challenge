# As a marketeer
# So that I can see my name in lights
# I would like to register my name before playing an online game
feature 'Register player names' do
  scenario 'User can enter their name to register for the game' do
    visit('/')
    expect(page).to have_content 'Player 1: Will'
  end
end

# As a marketeer
# So that I can enjoy myself away from the daily grind
# I would like to be able to play rock/paper/scissors
