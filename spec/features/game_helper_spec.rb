def greet_and_name
  visit("/")
  fill_in "name", with: "Subomi"
  click_button "Proceed"
end

def name_in_lights
  visit("/lights")
  click_button "Proceed to the game room"
end
