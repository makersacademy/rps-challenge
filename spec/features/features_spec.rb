
# As a marketeer
# So that I can see my name in lights
# I would like to register my name before playing an online game
feature 'Takes and stores Player 1 username' do
  scenario 'Can load app, sign in with a username and get presented with it' do
    visit('/')
    fill_in :player1_name, with: "Marketeer 1"
    click_button 'Play'
    expect(page).to have_content "Welcome to Makers RPS, Marketeer 1"
  end
end

# As a marketeer
# So that I can enjoy myself away from the daily grind
# I would like to be able to play rock/paper/scissors
