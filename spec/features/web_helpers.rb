def start_normal_game
  visit('/')
  fill_in 'name', with: 'Tony'
  choose('mode', option: 'normal')
  click_button 'Start'
end

def start_lizard_spock_game
  visit('/')
  fill_in 'name', with: 'Tony'
  choose('mode', option: 'lizard_spock')
  click_button 'Start'
end
