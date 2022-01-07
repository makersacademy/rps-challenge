feature 'RPS Game' do 

scenario 'registering names' do 
  visit ('/')
  fill_in :player_name, with: 'Gwen'
  click_button 'Start game'
  expect(page).to have_content 'Gwen vs. Computer'
end 

end