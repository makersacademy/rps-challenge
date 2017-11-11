def sign_in_and_play
  visit('/')
  fill_in(:Player_name, :with => 'Jo')
  click_button 'Play'
end
