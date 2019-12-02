def sign_in_and_play
  visit('/')
  fill_in(:name, with: "John")
  click_on('Submit')
end
