def sign_in_and_play
  visit('/')
  fill_in :player_name, with: 'Mac'
  click_button 'Submit'
end

def possible_messages
  ["Rock", "Paper", "Scissors"].map { |shape| "User chooses Scissors - Comp chooses #{shape}" }
end
