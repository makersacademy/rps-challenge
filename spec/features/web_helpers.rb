def sign_in_and_begin
  visit('/')
  fill_in :player, with: "Josh"
  click_button("Begin game")
end