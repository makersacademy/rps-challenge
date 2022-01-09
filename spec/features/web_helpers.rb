def gamebot_bob_play
  visit('/')
  click_button "Play GameBot"
  fill_in :name1, with: "Bob"
  click_button "Play"
end