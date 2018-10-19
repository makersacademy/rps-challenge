
def sign_in
  visit '/'
  fill_in :player_name, with: 'James'
  click_button 'Submit'
end

def sign_in_and_play
  visit '/'
  fill_in :player_name, with: 'James'
  click_button 'Submit'
  click_button 'PLAY'
end
