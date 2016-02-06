def sign_in
  visit('/')
  fill_in('Name', with: 'Emma')
  click_button('Submit')
end

def sign_in_and_choose_computer
  visit('/')
  fill_in('Name', with: 'Emma')
  click_button('Submit')
  click_button('Computer')
end
