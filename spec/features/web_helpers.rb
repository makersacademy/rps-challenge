def register
  visit '/'
  fill_in :username_1, :with => "Vicky"
  fill_in :username_2, :with => "Tim"
  click_button "Enter"
end
