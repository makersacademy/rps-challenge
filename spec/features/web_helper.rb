def one_player_sign_in_and_play
  visit '/'
  click_button '1 Player'
  fill_in(:player_name, with: "Imtiyaz")
  click_button 'Submit'
end

def two_player_sign_in_and_play
  visit '/'
  click_button '2 Player'
  fill_in(:player_1_name, with: "Mario")
  fill_in(:player_2_name, with: "Luigi")
  click_button 'Submit'
end
