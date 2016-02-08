require 'capybara/rspec'
require 'capybara/dsl'


 feature 'obtaining results' do
   scenario 'user selects weapon' do
     visit('/')
     fill_in :name, with: 'Hannah'
     click_button 'Submit'
     expect(page).to have_content "Hannah, welcome!"
     click_button 'name'
     expect(page). to have_content "Results"
   end
end
