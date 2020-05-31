def sign_in
  visit('/')
  fill_in :player1_name, with: 'Judy'
  click_button 'Lets play'
end

def computer_options
  [:rock, :paper, :scissors].map { |option| "computer chose #{option}" }
end
