require 'sinatra/base'

feature 'Test infrastructure setup' do
   scenario 'Navigate to index page' do
     visit '/'
     expect(page).to have_content 'Welcome to the Rock, Paper, Scissors game!'
   end
 end
