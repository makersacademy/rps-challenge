require_relative 'web_helpers' 


feature 'Homepage functionality' do
  scenario 'Shows what game we are playing' do
    visit('/')
    expect(page).to have_content "Let's play some Rock, Paper, Scissors!" 
  end

  scenario 'Asks for a username' do
    visit('/')
    expect(page).to have_field "player_name"
    expect(page).to have_content "To start the battle, please enter your name below..."
  end
end

feature 'Playing the game exluding the outcome' do
  scenario 'says we are starting game and player name' do
    start_game_with_name
    expect(page).to have_content "Ready, set... choose your weapon James!"
  end

  scenario 'asks player to choose a weapon' do
    start_game_with_name
    expect(page).to have_content "Choose wisely, friend"
    expect(page).to have_field "player_answer"
  end
end

feature 'Outcome page' do
  scenario 'Shows the weapn you have picked' do
    start_game_with_name
    choose 'Rock'
    click_on 'Submit'
    expect(page).to have_content "Good sir, here is your Rock"
  end

  scenario 'Tells player what the CPU has chosen as their weapon' do
    start_game_with_name
    choose 'Rock'
    click_on 'Submit'
    expect(page).to have_content "We have just had word from our man in the enemy camp, they have armed your opponent with:"
  end

  scenario 'Allow player to play again once round is over' do
    start_game_with_name
    choose 'Rock'
    click_on 'Submit'
    click_on "If you are brave enough to play again, CLICK HERE"
    expect(page).to have_content "Ready, set... choose your weapon James!"
  end

  scenario 'Allow a new player to play once the round is over' do
    start_game_with_name
    choose 'Rock'
    click_on 'Submit'
    click_on "OR, if a different warrior has the will to take on the battle, CLICK HERE"
    expect(page).to have_content "Let's play some Rock, Paper, Scissors!"
  end
end