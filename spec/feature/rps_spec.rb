require_relative 'web_helpers'

feature 'Rps' do
  scenario 'Player(s) can register name before playing the game' do
    register_one_player
    expect(page).to have_content("Bob vs. Computer")
  end

  scenario 'Player(s) can play by clicking one of the Rock, Paper, Scissors buttons' do
    register_one_player
    click_button('Rock')
    expect(page).to have_content('rock')
  end

  scenario "Player(s) can see the Computer's chosen weapon" do
    allow_any_instance_of(Array).to receive(:sample).and_return('paper')
    register_one_player
    click_button('Rock')
    expect(page).to have_content('paper')
  end

  scenario 'Result displayed if drawn' do
    allow_any_instance_of(Array).to receive(:sample).and_return('paper')
    register_one_player
    click_button('Paper')
    expect(page).to have_content("It's a draw!")
  end

  scenario 'Result displayed if player_1 wins' do
    allow_any_instance_of(Array).to receive(:sample).and_return('scissors')
    register_one_player
    click_button('Rock')
    expect(page).to have_content("Bob wins!")
  end

  scenario 'Result displayed if Computer/player_2 wins' do
    allow_any_instance_of(Array).to receive(:sample).and_return('paper')
    register_one_player
    click_button('Rock')
    expect(page).to have_content("Computer wins!")
  end

  scenario '2 players can choose to play against each other' do
    register_two_players
    expect(page).to have_content("Bob vs. Fred")
  end

  scenario 'Player(s) can choose to play again' do
    register_two_players
    click_button('Rock')
    click_button('Paper')
    click_button('Play again')
    expect(page).to have_content('Bob please choose your weapon:')
  end

  scenario 'Player(s) can choose to start from the beginning' do
    register_two_players
    click_button('Rock')
    click_button('Paper')
    click_button('Start from the beginning')
    expect(page).to have_content('Welcome to the Rock-Paper-Scissors game!')
  end
end
