def sign_in_and_player_number
  visit ("/")
  select "2", :from => "noofplayers"
  click_button "Submit"
end

def accept_player_names
  fill_in :player1, with: "John"
  fill_in :player2, with: "Jane"
  click_link "Submit"
end
