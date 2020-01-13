def sign_in
  visit('/')
  fill_in :player_name, with: 'Sam Dalzell'
  click_button('Submit')
end
