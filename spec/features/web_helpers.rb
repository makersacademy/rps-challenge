def sign_in
  visit('/')
  fill_in(:name, with: "Jenna")
  click_button "Submit"
end

def select_choice
  choose(:Rock)
  click_button "Submit"
end
