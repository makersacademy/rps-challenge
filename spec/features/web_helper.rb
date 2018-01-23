def login_with_derek
  visit "/"
  fill_in "Enter name", with: "Derek"
  click_button "Begin..."
end

def check_its_not_error_page
  expect(page).not_to have_content("AABBYkjahskdh987289")
end

def attack_with_rock
  login_with_derek
  click_button "Attack your opponent"
  check_its_not_error_page
end

def make_attack_with_different_objects(attack)
  login_with_derek
  choose(attack)
  click_button "Attack your opponent"
end
