def sign_in

  visit '/'
  fill_in 'player_name', with: 'Timbo'
  click_button('Submit name')

end

def sign_in_and_play

  visit '/'
  fill_in 'player_name', with: 'Timbo'
  click_button('Submit name')
  choose("Rock")
  click_button("Submit")

end
