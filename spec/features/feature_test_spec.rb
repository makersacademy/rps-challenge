# As a marketeer
# So that I can see my name in lights
# I would like to register my name before playing an online game
feature 'Player can enter their name at start of game and confirmed input' do

  scenario '#Player can see input requesting name' do
    visit('/')
    expect(page).to have_content('Please enter your name to begin:')
  end
  
  scenario '#The player can input name and see confirmation' do
    sign_in_and_play
    expect(page).to have_content('Welcome Henry')
  end
end

# As a marketeer
# So that I can enjoy myself away from the daily grind
# I would like to be able to play rock/paper/scissors
