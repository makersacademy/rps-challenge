def sign_in_and_play
  visit('/')
  fill_in :name, with: 'Lucy'
  click_button 'Submit'
end

def possible_message
  [:rock, :paper, :scissors].map { |option| "Computer chose #{option.to_s.capitalize}" }
end
