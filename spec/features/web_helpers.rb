def sign_in_and_play
  visit '/'
  fill_in :Name, :with => "Alex"
  click_button "Submit"
end
