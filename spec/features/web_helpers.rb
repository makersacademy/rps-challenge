
def sign_in_and_play
  visit('/')
  click_button '1 Player'
  fill_in :name, with: "Jamie"
  click_button 'Submit'
end
