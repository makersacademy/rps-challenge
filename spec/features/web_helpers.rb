def begin_and_submit
  visit('/')
  fill_in :name, with: 'Damo'
  click_button 'Submit'
end
