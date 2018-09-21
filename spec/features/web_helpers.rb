def sign_in
  visit( '/')
  fill_in :name_one, with: 'Freya'
  click_button 'Submit'
end