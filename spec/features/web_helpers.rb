def sign_in_and_select_move
  visit('/')
  fill_in :challenger, with: 'Link'
  select(:rock, from: 'move')
  click_button 'one, two, THREE'
end
