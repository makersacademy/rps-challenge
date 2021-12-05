def sign_in
  visit('/')
  fill_in('name', with: 'Chris')
  click_button 'Submit'
  select "Solo", :from => "Multiplayer?"
  click_button 'Submit'
end
