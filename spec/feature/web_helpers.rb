PLAY_SEED = 221563

def sign_in_and_play
  visit'/'
  fill_in 'name', with: 'Gus'
  click_button 'Submit'
  click_button 'Rock'
end

def possible_messages
  [:rock, :paper, :scissors].map { |tool| "opponent chose #{tool.to_s.capitalize}!"}
end
