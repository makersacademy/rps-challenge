def register_and_play
  visit '/'
  fill_in(:player_name, with: 'Rudolph')
  click_button "Let's play"
end
