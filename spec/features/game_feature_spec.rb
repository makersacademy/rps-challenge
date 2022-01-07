feature 'RPS Game' do 

#scenario 'program should not result in Sinatra error pages' do
 # expect(page).to_not have_content 'Sinatra'
#end

scenario 'registering names' do 
  start_game
  expect(page).to have_content 'Gwen vs. Computer'
  expect(page).to_not have_content 'Sinatra'
end 

scenario 'showing three options for player turn' do 
  start_game
  expect(page).to have_content 'Rock'
end

end