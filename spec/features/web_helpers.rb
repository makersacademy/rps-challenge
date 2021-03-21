def enters_name
  visit '/'
  fill_in 'player', with: 'Boo Radley'
  click_button 'OK'
end 

def makes_a_move
  enters_name
  click_button "Rock"
end
