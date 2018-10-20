def one_player_sign_in_and_play
  visit '/'
  click_button '1 Player'
  fill_in(:player_name, with: "Imtiyaz")
  click_button 'Submit'
end
