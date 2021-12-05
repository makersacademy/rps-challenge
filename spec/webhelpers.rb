def sign_in_and_play
  visit('/')
  fill_in('name1', with: "Wednesday")
  fill_in('name2', with: "Thing")
  click_button('Play')
end
