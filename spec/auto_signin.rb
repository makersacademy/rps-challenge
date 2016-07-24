def sign_in
  visit ('/')
  fill_in 'player_name', :with=> 'Bart'
  click_button('submit')
end
