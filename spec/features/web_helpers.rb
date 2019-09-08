PLAYER_NAME = 'Vale'
def sign_in_and_play
  visit('/')
  fill_in :player_name, with: PLAYER_NAME
  click_on 'Submit'
end
