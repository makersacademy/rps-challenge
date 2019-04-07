
def sign_in_and_play
  visit('/')
  click_button '1 Player'
  fill_in :enter_name, with: 'Joe'
  click_button 'Submit'
end

def sign_in_and_play_2p
  visit('/')
  click_button '2p'
  fill_in :enter_name, with: 'Joe'
  fill_in :enter_name, with: 'Ollie'
  click_button 'Submit'
end 
def select_button
  visit ('/')
  click_button '1 player'
end

def select_2p
  visit('/')
  click_button '2p'
end
