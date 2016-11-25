def sign_in
  visit('/')
  fill_in(:name, with: "Jenna")
  click_button "Submit"
end
