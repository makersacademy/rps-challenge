def sign_in
  visit('/')
  fill_in :player_name, :with => "Sam"
  click_button 'submit'
end
