def enter_name_and_play
  visit '/'
  fill_in 'name', with: "Mittens"
  click_button 'Submit'
  select 'Rock', from: 'move'
  click_button 'Submit'
end
