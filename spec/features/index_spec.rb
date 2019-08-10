require_relative '../../app.rb'

feature 'testing index page' do


scenario 'player can see main page' do
  visit('/')
  expect(page).to have_content("welcome to rock scissors paper game")
end

scenario 'player can see enter the name and see it on the website' do
  visit('/')
  fill_in 'name', with: 'Anna'
  click_button 'play'
  expect(page).to have_content("Anna")
end



end