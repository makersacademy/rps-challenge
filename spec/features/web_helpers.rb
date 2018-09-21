def enter_name_and_play
  visit('/')
  fill_in :player_name, with: 'Sharknado'
  click_button 'To The Thunderdome!'
end
