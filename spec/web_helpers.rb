def register
  visit '/'
  fill_in :user, with: 'Ana'
  click_button('Register')
end
