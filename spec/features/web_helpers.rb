def sign_in
  visit('/')
  fill_in :player, with: "Jacques"
  click_button "Submit"
end

def play
  select "Rock", :from => "move"
  click_button "Submit"
end
