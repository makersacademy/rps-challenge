def sign_in_and_play
  visit('/')
  fill_in('name', with: 'Guillermo')
  click_button('Submit')
end

def computer_possible_choice_message
  [:rock, :paper, :scissors].map { |shape| "The computer had selected #{ shape.to_s.capitalize }!"}
end
