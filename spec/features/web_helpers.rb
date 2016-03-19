def single_sign_in
  visit "/"
  fill_in(:player_1, with: "Mittens")
  click_button "Play!"
end

def double_sign_in
  visit "/"
  fill_in(:player_1, with: "Mittens")
  fill_in(:player_2, with: "Fluffy")
  click_button "Play!"
end
