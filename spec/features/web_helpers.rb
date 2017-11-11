def enter_name_and_submit
  go_to_homepage
  fill_in("name", with: "Tom")
  click_button(id: "submit")
end

def go_to_homepage
  visit('/')
end
