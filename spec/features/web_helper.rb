def enter_name_and_play
  visit '/'
  fill_in :player1, with: 'Murtz'
  click_button 'submit'
end
