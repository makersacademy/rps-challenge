def sign_in_and_click_submit
  visit('/')
  fill_in :player, with: "player_name"
  click_button 'Bow'
end
