def sign_up_submit
  visit "/"
  fill_in :name, :with => "Marketer McMarketerface"
  click_button "Submit"
end
