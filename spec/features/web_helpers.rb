def enter_player
  visit '/'
  fill_in 'player_1_name', with: 'Celia'
  click_button 'Submit'
end

def different_options
  [:rock, :paper, :scissors].map { |option| "Opponent chose #{option.to_s.capitalize}"}
end 
