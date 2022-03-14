def user_signs_in 
  visit '/'
  within('form') do
    fill_in("name", with: "James")
  end
  click_on "Submit"
end

def user_chooses_rock
  user_signs_in

  check 'R'
  click_on "Submit"
end