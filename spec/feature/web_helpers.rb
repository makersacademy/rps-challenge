def sign_and_play
  visit '/'
  fill_in 'name', with: 'Rafa'
  click_button 'Hit button!'
end

def possible_messages
  [:rock,:paper,:scissors].map { |shape| "Opponent choose #{shape.to_s.capitalize}!" }
end