def enter_name
  visit('/')
  fill_in :name, with: 'Coco'
  click_button 'Submit'
end
