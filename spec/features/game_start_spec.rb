feature 'Game start screen' do
  scenario 'Player has three options on game start screen' do
    sign_in_and_play
    find_button('ROCK!!').visible?
    find_button('PAPER!!').visible?
    find_button('SCISSORS!!').visible?
  end
end
