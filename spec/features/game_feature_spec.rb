feature 'RPS Game' do 

#scenario 'program should not result in Sinatra error pages' do
 # expect(page).to_not have_content 'Sinatra'
#end

scenario 'registering names' do 
  visit ('/')
  fill_in :player_name, with: 'Gwen'
  click_button 'Start Game'
  expect(page).to have_content 'Gwen vs. Computer'
  expect(page).to_not have_content 'Sinatra'
end 

scenario 'showing three options for player turn' do 
  visit ('/')
  fill_in :player_name, with: 'Gwen'
  click_button 'Start Game'
  expect(page).to have_content 'Rock'
end

end