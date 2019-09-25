def fill_in_name_and_submit
  visit '/'

  fill_in "name", with: "Sam"
  click_button "Start Game"
end
