def sign_in_to_play
  visit '/'
  fill_in :player, with: 'Zeeshan'
  click_button 'submit'
end
