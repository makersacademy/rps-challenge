def sign_in_and_begin
  visit('/')
  fill_in :player, with: "Josh"
  click_button("Begin game")
end

def choose_scissors_and_submit
  find(:xpath, "//input[@value='Scissors']").click
  click_button("Submit")
end
