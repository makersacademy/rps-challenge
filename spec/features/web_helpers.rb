def submit_name(name)
  visit '/'
  fill_in 'player_name', :with => name
  click_on 'Submit'
end
