def enter_name
  visit ('/')
  fill_in :player_name, with: 'Trevor'
  click_button 'Submit'
end
