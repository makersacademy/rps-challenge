def start_single_player
  visit('/')
  choose("mode", option: "single_player")
  click_button('Continue')
end
