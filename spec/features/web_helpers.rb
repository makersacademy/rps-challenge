def enter_name_submit
  visit("/")
  fill_in :name, with: 'Adam'
  click_button 'Submit'
end

def select_rock
  enter_name_submit
  click_button 'Rock'
end
