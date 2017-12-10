def sign_in_and_submit
  visit '/'
  click_on "Multiplayer"
  fill_in('p1_name', with: "James")
  fill_in('p2_name', with: "Mary")
  click_on "Submit"
end
