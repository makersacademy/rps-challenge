def sign_in
  visit('/')
  fill_in('name', with: 'Ginevra Weasley')
  click_button('Enter')
end
