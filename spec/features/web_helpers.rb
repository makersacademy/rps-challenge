def player_sign_in(name)
  visit("/")
  fill_in :player_1_name, with: name
  click_button 'Start'
end

def players_sign_in(name1, name2)
  visit("/")
  fill_in :player_1_name, with: name1
  fill_in :player_2_name, with: name2
  click_button 'Start'
end