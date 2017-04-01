def sign_in
  visit '/'
  fill_in 'name', :with => 'Steph'
  click_button 'Play!'
end
