def sign_in
  visit '/'
  fill_in "player", :with => "Alex"
  click_button 'Submit'
end
