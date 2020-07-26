def enter_name 
  visit '/'
  fill_in :PlayerName, with: "Haz"
  click_button 'Enter Name'
end
