def sign_in_and_submit 
  visit('/')
  fill_in('player_one', with: 'Dave')
  click_on('Submit') 
end
