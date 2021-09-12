def enter_your_name_and_play
  visit('/')
  fill_in :player, with: 'John'
  click_button 'Submit'
end
