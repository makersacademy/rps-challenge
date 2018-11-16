def sign_in
  visit '/'
  fill_in 'name', with: "Jo Brown"
  click_button 'Enter name'
end

def sign_in_and_play
  sign_in
  click_button "Play"
end
