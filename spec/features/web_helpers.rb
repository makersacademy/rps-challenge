def fill_in_name_and_start_new_game
  visit("/")
  fill_in("name", with: "Bob")
  click_button("New Game")
end

def possible_computer_selection_messages
  [:rock, :paper, :scissors].map do |weapon|
    "Computer selected #{weapon.to_s.capitalize}!"
  end
end