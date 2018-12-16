def homepage
  visit ("/")
end

def greet_and_name
  fill_in "name", with: "Subomi"
  click_button "Proceed"
end
