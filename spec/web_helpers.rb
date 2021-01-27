def enter_name_and_submit
  visit('/')
  fill_in :player, with: 'Glykeria'
  click_button "Let's play!"
end
