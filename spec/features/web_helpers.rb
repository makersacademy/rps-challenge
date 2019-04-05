def sign_in_and_play
  visit ('/')
  fill_in :name, with: "Josh"
  click_button 'Play Single Player'
end
