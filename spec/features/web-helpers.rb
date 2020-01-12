def sign_in
  visit '/'
  fill_in :credentials, with:'Marcello'
  click_button 'Submit'
end