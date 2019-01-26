
# As a marketeer
# So that I can see my name in lights
# I would like to register my name before playing an online game
feature 'Takes and stores Player 1 username' do
  scenario 'Can load app, sign in with a username and get presented with it' do
    player1_sign_in
    expect(page).to have_content "Welcome to Makers RPS, Marketeer 1"
  end
end

# As a marketeer
# So that I can enjoy myself away from the daily grind
# I would like to be able to play rock/paper/scissors
feature 'User can play RPS' do
  scenario 'User can choose from Rock, Paper or Scissors' do
    player1_sign_in
    expect(page).to have_button("scissors")
  end
  scenario 'User chooses Rock, gets presented with a winning screen' do
    dbl = double
    player1_sign_in
    click_button 'rock'
    allow(dbl).to receive(:result).and_return("scissors")
    expect(page).to have_content("You win!")
  end
end
