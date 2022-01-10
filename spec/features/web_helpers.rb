def gamebot_bob_play
  visit('/')
  click_button "Play GameBot"
  fill_in :name1, with: "Bob"
  click_button "Play!"
end

def human_bob_babs_play
  visit('/')
  click_button "Play Human"
  fill_in :name1, with: "Bob"
  fill_in :name2, with: "Babs"
  click_button "Play!"
end
