def sign_in(name)
  visit '/'
  fill_in :name, with: name
  click_button 'go-button'
end