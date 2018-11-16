def sign_in_and_play
  visit '/'
  fill_in :player_1_name, with: "Asad"
  click_button "Submit"
end

def possible_messages
  [:Rock, :Paper, :Scissors].map { |move| "Opponent chose #{move}"}
end
