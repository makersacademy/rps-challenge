require_relative '../../app.rb'

feature 'testing index page' do


scenario 'player can see main page' do
  visit('/')
  expect(page).to have_content("welcome to rock scissors paper game")
end



end