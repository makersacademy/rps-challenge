def sign_in_and_play
  visit('/')
  click_button "Single Player"
  fill_in :player, with: 'Charlotte'
  click_button "Submit"
end

def sign_in_and_play_multi
  visit('/')
  click_button "Multi Player"
  fill_in :player, with: 'Charlotte'
  click_button "Submit"
end
