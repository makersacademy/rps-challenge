def game_sign_in
  visit '/'
  fill_in :player_name, with: 'Jane'
  click_button 'Sign In'
end 
