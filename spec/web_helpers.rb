def sign_in_and_play
  visit('/')
  fill_in :player_name, with: 'Ryu'
  click_button 'Submit'
end

def possible_messages
  [:rock, :paper, :scissors].map { |shape| "Opponent chose #{shape.to_s.capitalize}"  }
end
