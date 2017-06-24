 # spec/features/web_helpers.rb

 def sign_in_and_play
  visit('/')
  fill_in(:player_name, with: 'Miho')
  click_button('Submit')
 end
