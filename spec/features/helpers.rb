def single_player_sign_in_helper
  visit('/')
  fill_in(:player_name, with: 'Reginald')
  click_button('single')
end

def multiplayer_sign_in_helper
  visit('/')
  fill_in(:player_name, with: 'Reginald')
  click_button('multi')
end
