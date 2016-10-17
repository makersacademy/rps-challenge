def sign_in(name='Tadas')
  visit '/'
  fill_in "player1_name", :with => name
  click_button "Submit"
end

def sign_in_and_select(weapon)
  sign_in
  click_button weapon
end
