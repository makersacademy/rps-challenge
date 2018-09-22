def move_past_welcome
  visit '/'
  click_button 'Enter'
end

def from_welcome_to_winner
  visit '/'
  click_button 'Enter'
  fill_in :player1_name, with: "Dave"
  click_button "Play"
  click_button "Rock"
end
