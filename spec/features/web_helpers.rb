def sign_in_and_play
  visit '/'
  fill_in 'name', with: 'Harry'
  click_on 'Fight!'
end