def sign_in_and_choose_computer
  visit('/')
  click_button 'Computer opponent'
  fill_in :name_one, with: 'Freya'
  click_button 'Submit'
end

def sign_in_and_choose_human
  visit('/')
  click_button 'Human opponent'
  fill_in :name_one, with: 'Freya'
  fill_in :name_two, with: 'Ayerf'
  click_button 'Submit'
end
