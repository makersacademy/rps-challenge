def sign_in_and_play(name)
  visit '/'
  click_button '1P vs AI'
  fill_in(:player_1_name, with: name)
  click_button 'Submit'
end
