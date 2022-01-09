def enter_bob_hit_play
  visit('/')
  fill_in :name, with: "Bob"
  click_button "Play!"
end