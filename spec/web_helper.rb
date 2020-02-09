def start_playing
  visit '/'
  fill_in :player_name, with: "Foobar"
  click_button 'Go'
end

def choose_rock
  select('Rock', from: 'move')
  click_button '3 2 1...'
end