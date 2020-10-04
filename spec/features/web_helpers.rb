def submit_name(name = 'name')
  visit '/'
  fill_in 'Name', with: name
end

def play_solo(name = 'name')
  submit_name(name)
  click_button 'Play the computer'
end

def play_multi(name1 = 'name', name2 = 'name2')
  submit_name(name1)
  click_button 'Play with a friend'
  fill_in 'Name', with: name2
  click_button 'Play'
end

def choose_weapon(weapon = 'Rock')
  choose option: weapon
  click_button 'Go!'
end
