def sign_in
  visit '/'
  fill_in 'name', with: 'George'
  click_button('Submit')
end

def sign_in_and_play
  sign_in
  click_button("1 player")
end
