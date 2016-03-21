def sign_in_and_play(player1)
  visit '/'
  select 'Star-Trek', from: 'rules'
  click_button 'Next'
  fill_in 'player1', with: player1
  click_button 'Submit'
end

def sign_in_and_play_regular(player1)
  visit '/'
  select 'Regular', from: 'rules'
  click_link 'Next'
  fill_in 'player1', with: player1
  click_button 'Submit'
end
