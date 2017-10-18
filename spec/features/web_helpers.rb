
def sign_in_page
  visit('/')
  fill_in :name, with: 'Rock Star Marketeer'
  click_button 'Submit'
end
