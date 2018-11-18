
def register
  visit '/'
  fill_in 'name', with: 'Tomas'
  click_on 'Register'
end
