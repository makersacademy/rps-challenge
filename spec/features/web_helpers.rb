def move_past_welcome
  visit '/'
  click_button 'Enter'
  fill_in :player1_name, with: "Dave"
  click_button "Play"
end

def from_welcome_to_winner
  move_past_welcome
  click_button "Rock"
end

def move_past_welcome_multiplayer
  visit '/'
  select "Multiplayer", :from => "play_mode"
  click_button 'Enter'
  fill_in :player1_name, with: "Dave"
  fill_in :player2_name, with: "Tim"
  click_button "Play"
end
