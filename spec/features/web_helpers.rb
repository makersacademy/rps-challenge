def sign_in
  visit('/')
  fill_in :player, with: "Jacques"
  click_button "Submit"
end

def play(string)
  select string, :from => "move"
  click_button "Submit"
end
