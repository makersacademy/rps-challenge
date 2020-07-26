def enter_name 
  visit '/'
  fill_in :Player1_Name, with: "Haz"
  click_button 'Solo Game For Death and Glory!'
end
