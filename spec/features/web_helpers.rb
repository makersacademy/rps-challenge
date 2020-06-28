def register_to_play
  visit '/'
  fill_in "name", with: "Player1"
  click_button("Submit")
end

def ready_to_play
  register_to_play
  click_button("YES")
end
