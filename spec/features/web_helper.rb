def set_up
  visit '/'
  fill_in "name", :with => "Sally"
  click_button "Play!"
end

def choice
  fill_in "choice", :with => "rock"
  click_button "Confirm"
end
