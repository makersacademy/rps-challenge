def sign_in
  visit ('/')
  fill_in :player_name, :with => 'Xin'
  click_button('Submit')
end
