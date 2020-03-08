def register_name
  visit('/')
  fill_in :Your_name, with: "Peter"
  click_button "Submit"
end

def opponent_choices 
  [:rock, :paper, :scissors].map do |shape|
    "Opponent chose: #{shape.to_s.capitalize}"
  end
end