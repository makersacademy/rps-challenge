def sign_in
  visit '/'
end

def sign_in_and_register
  visit '/'
  fill_in :name, with: "Charlotte"
  click_button 'Submit'
  visit '/name'
  visit '/play'
end
