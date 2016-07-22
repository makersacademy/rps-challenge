def sign_in_and_play
  visit '/'
  fill_in :name, with: 'Mali'
  click_button 'Lets go!'
end
