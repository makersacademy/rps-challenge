def sign_in_and_play(name)
  visit '/'
  click_button '1P vs AI'
  fill_in(:player_1_name, with: name)
  click_button 'Submit'
end

def multiplayer_sign_in(p1, p2)
  visit '/'
  click_button '1P vs 2P'
  fill_in(:player_1_name, with: p1)
  fill_in(:player_2_name, with: p2)
  click_button 'Submit'
end
