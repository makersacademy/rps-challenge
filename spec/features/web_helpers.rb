def sign_in
  visit '/'
  fill_in :player_name, with: 'Sam'
  click_button 'Submit'
end

def sign_in_and_play
  visit '/'
  fill_in :player_name, with: 'Sam'
  click_button 'Submit'
  visit '/play'
end

def sigin_in_as_sam
  visit '/'
  fill_in :player_name, with: 'Sam'
  click_button 'Submit'
end
