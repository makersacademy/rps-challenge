def sign_in_and_play
  visit '/'
  fill_in :name, with: 'James'
  click_button 'OK'
end
