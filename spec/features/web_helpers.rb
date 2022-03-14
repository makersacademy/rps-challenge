def user_signs_in 
  visit '/'
  within('form') do
    fill_in("name", with: "James")
  end
  click_on "Submit"
end