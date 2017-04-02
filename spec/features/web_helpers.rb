def put_name_and_choice_paper
  visit('/')
  fill_in :name, with: 'Elaine'
  click_button 'PLAY'
  click_button 'Paper 📄'
end
