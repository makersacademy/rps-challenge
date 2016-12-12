def sign_in
  visit "/"
  fill_in "player_name", :with => "Chris"
  click_button "submit"
end

def select_choice
  choose(:Rock)
  click_button "Submit"
end
