def sign_in
  visit('/')
  fill_in :player, with: "Aga"
  click_button "Play"
end
