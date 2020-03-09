def name_submit
  fill_in :player_name, with: 'John'
  click_button 'Start game'
end

def name_submit_choice(choice)
  name_submit
  click_button choice
end
