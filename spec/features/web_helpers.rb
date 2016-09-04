def sign_in_and_play
  visit '/'
  fill_in(:player, with: "Summer")
  click_button "Bring it on!"
end
