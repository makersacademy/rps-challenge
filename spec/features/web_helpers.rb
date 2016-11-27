def start
  visit '/'
  fill_in "player1_name", :with => "Pea"
  click_button "Submit"
end

def attack
  click_button("Rock")
end
