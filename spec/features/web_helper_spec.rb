def sign_in_and_play
  visit('/')
  fill_in('player', with: 'Jade')
  click_button 'Begin'
end
