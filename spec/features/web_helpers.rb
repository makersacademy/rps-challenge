def sign_in
  visit('/')
  fill_in :player_name, with: "Kevin"
  click_button "Start Game"
end

def sign_in_and_play
  sign_in
  click_button "Rock"
end
