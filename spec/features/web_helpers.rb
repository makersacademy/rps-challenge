require_relative "../../lib/app"

def sign_in_and_play
  visit '/'
  fill_in 'player1', with: 'Caesar'
  click_button 'submit'
end
