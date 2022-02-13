def sign_in_and_play
  visit('/')
  fill_in(:player1_name, with: 'Sarah')
  click_button 'Begin!'
end