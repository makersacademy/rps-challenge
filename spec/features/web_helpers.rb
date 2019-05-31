def sign_and_play
  visit '/'
  fill_in :player, with: "Bob"

  click_button "Play!"
end
