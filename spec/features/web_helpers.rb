def sign_in_and_play
  visit '/'
  fill_in('name', with: 'Chrissy')
  click_button 'Ready'
end
