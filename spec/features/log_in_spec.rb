require 'capybara/rspec'
require 'capybara/dsl'


 feature 'submitting names' do
   scenario 'entered names' do
     visit('/')
     fill_in :name, with: 'Hannah'
     click_button 'Submit'
     expect(page).to have_content "Hannah, welcome!"
   end
end
