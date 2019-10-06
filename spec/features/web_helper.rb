def sign_in_single
  visit '/'
  click_button("Single Player")
  fill_in('player_1_name', with: 'James')
  click_button("Let's Play")
end
