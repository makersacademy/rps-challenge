def give_name_heraldo
  visit('/')
  fill_in :name1, with: 'Heraldo'
  click_button 'Submit'
end
