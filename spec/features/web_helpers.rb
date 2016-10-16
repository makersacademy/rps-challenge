def sign_in_and_play
  visit('/')
  fill_in :player, :with => 'Rocky'
  click_button 'Play!'
end
