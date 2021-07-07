def enter_name_and_play
  visit('/')
  fill_in :name, with: "Deanna"
  click_button 'Go!'
end
