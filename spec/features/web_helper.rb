def set_up
  visit '/'
  fill_in "name", :with => "Sally"
  click_button "Play!"
end

def choice
  choose "rock"
  click_button "Confirm"
end
