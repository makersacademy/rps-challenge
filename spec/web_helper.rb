def register_and_play
  visit '/'
  fill_in('name', :with => "Tom")
  click_button 'Submit'
end
