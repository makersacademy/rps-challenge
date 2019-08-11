def goto_register
  visit('/home')
  click_button('Enter')
end

def goto_play
  visit('/home')
  click_button('Enter')
  fill_in('player_name', with: 'Chuan Cheng')
  click_button('Register & Play')
end
