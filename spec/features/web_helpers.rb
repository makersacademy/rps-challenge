def sign_up_submit
  visit "/"
  fill_in :name, :with => "Marketer McMarketerface"
  click_button "Submit"
end

def sign_up_submit_generate_opponent
  sign_up_submit
  click_button("Generate Opponent")
end
