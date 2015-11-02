def sign_in_and_play
  visit '/'
  fill_in('name', with: 'Norm')
  click_button 'OK'
end
