def sign_in
  visit '/'
  fill_in :player_name, with: 'Andy'
  click_button "Submit"
end
