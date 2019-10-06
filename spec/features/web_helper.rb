def enter_name_submit
  visit('/')
  fill_in :player_name, with: 'Yas'
  click_button 'Submit'
end