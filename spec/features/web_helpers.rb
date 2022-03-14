def register
  visit("/")
  fill_in(name: "player_name", with: "Rob")
  click_button(name: "submit")
end

def play_move(move_id)
  choose(id: move_id)
  click_button(name: "submit")
end
