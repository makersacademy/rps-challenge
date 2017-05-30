def register
  visit '/'
  fill_in 'player_name', with: 'Luke'
  click_button 'Register'
end
