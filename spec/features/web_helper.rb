
def sign_in
  visit '/'
  fill_in :player, with: 'Harry'
  click_button 'Play'
end
