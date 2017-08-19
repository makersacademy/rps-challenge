
def submit_name
  visit('/')
  fill_in :name, with: 'Monkey'
  click_button 'Play'
end
