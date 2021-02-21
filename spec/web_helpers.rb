def sign_in_and_play
  visit("/")
  fill_in("name", with: "BIMINI BON BOULASH")
  click_button "Play!"
end
