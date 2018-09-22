
def sign_and_play
  visit('/')
  fill_in :player_1_name, with: "Bob"
  fill_in :player_2_name, with: "Sam"
  click_button 'Submit'
end
