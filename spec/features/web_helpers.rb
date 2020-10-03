def submit_name(name = 'name')
  visit '/'
  fill_in 'Name', with: name
  click_button 'Play'
end

def choose_weapon(weapon = 'Rock')
  choose option: weapon
  click_button 'Go!'
end
