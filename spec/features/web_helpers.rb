def enter_name 
  visit '/'
  fill_in :Player1_Name, with: "Haz"
  click_button 'Solo Game For Death and Glory!'
end

def enter_multiplayer
  visit '/'
  fill_in :Player1_Name, with: "Haz"
  fill_in :Player2_Name, with: "John Cena"
  click_button 'Multiplayer'
end

def enter_attacks(attack1, attack2)
  click_button attack1
  click_button attack2
end
