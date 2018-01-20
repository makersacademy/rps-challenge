def login_with_derek
  visit "/"
  fill_in "Enter name", with: "Derek"
  click_button "Begin..."
end

def check_its_not_error_page
  expect(page).not_to have_content("AABBYkjahskdh987289")
end
