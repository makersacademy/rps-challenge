def start_game
  visit '/'
  fill_in "name", with: "Sophie"
  click_button("Play")
end
