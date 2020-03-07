def sign_and_play
  visit '/'
  fill_in 'name', with: 'Rafa'
  click_button 'Hit it Bastard!'
end

def possible_messages
  [:rock,:paper,:scissors].map { |shape| "Opponent choose #{shape.to_s.capitalize}!" }
end