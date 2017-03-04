def register
  visit '/'
  fill_in :username, :with => "Vicky"
  click_button "Enter"
end
