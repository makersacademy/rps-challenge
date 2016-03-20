def sign_in_and_play
  visit '/'
  fill_in('username', with: 'John')
  click_button 'Begin'
end
