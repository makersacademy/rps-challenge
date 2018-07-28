def sign_in_and_play
  visit('/')
  fill_in :player, with: "Mufasa"
  click_button 'Let\'s rumble!'
end
