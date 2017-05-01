def sign_in_name
  visit '/'
  fill_in :player_1, with:"Simon"
  click_button('Submit')
end
