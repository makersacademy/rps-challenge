def sign_in_and_submit
  visit '/'
  fill_in 'name', with: 'Louis'
  click_button 'Submit'
end

def possible_messages
  [:rock, :paper, :scissors].map { |shape| "Opponent chose #{shape.to_s.capitalize}"}
end 
