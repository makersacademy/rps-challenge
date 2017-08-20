def sign_in_and_play
  visit '/'
  fill_in "player_1", :with => "Aloysius"
  fill_in "player_2", :with => "Sebastian"
  click_button "Play!"
end

def choose_and_shoot
  select("Rock", from: "Move")
  click_button "SHOOT!"
end
