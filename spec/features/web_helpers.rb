def sign_in_and_play
  visit '/'
  fill_in :name, with: 'Riya'
  click_button 'Go'
end
