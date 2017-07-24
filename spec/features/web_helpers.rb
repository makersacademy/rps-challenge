def sign_in_and_play
  visit('/')
  fill_in('player_name', with: 'Player Name')
  click_button 'Submit'
end

def messages
  [:Rock, :Paper, :Scissors].map { |choice| "#{choice} beats Rock: Player Name wins!" }
end
