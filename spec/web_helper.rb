def start_playing
  visit '/'
  fill_in :player_name, with: "Foobar"
  click_button 'Go'
end