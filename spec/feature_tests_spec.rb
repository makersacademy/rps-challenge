# As a marketeer
# So that I can see my name in lights
# I would like to register my name before playing an online game
feature 'Signing in' do
  scenario 'See your name after signing in' do
    sign_in
    expect(page).to have_content 'Bob'
  end
end

# As a marketeer
# So that I can enjoy myself away from the daily grind
# I would like to be able to play rock/paper/scissors
feature 'Playing Rock, Paper, Scissors' do
  before do
    srand(3) # computer always picks scissors
  end

  scenario 'Winning a game' do
    sign_in
    click_button :rock
    expect(page).to have_content 'You win'
  end

  scenario 'Losing a game' do
    sign_in
    click_button :paper
    expect(page).to have_content 'You lose'
  end

  scenario 'Tying' do
    sign_in
    click_button :scissors
    expect(page).to have_content "It's a draw"
  end
end
