def sign_in_and_play(name)
  visit '/'
  fill_in(:player_1_name, with: name)
  click_button 'Submit'
end
